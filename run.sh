#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

export PATH=$HOME/mlir-gpu/build/bin:$PATH
export PATH=$HOME/pluto:$PATH

stdinclude=$HOME/mlir-gpu/llvm/../clang/lib/Headers

CC='clang -O3'

CCPolly='clang -O3 -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false'
CCPollyParallel='clang -O3 -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-parallel -mllvm -polly-parallel-force -mllvm -polly-omp-backend=LLVM -mllvm -polly-scheduling=dynamic -mllvm -polly-scheduling-chunksize=4'


CCPluto='polycc --silent --tile'
CCPlutoParallel='polycc --silent --parallel --tile'

CCMlir='mlir-clang'

LDFLAGS=-lm
BASE=$(pwd)

dirList="linear-algebra/blas
         linear-algebra/kernels
         linear-algebra/solvers
         datamining
         stencils
         medley"

# Double check if pwd still needed, likely no
CFLAGS="-fopenmp -I $BASE/utilities -I $stdinclude -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D EXTRALARGE_DATASET "

#dirList="linear-algebra/blas"

TOOLS="clangsing clang mlir-clang polly pollypar pluto plutopar polymer polymerpar"

function run()
{
  TOOL="$1"
  TEST="$2"
  OUT=$TEST.$TOOL.ll
  case $TOOL in

    clangsing)
      clang $CFLAGS -O1 -S -emit-llvm -Xclang -disable-llvm-passes $TEST.c -o $OUT
      ;;

    clang)
      clang $CFLAGS -O3 -S -emit-llvm $TEST.c -o $OUT
      ;;

    mlir-clang)
      mlir-clang $CFLAGS -emit-llvm $TEST.c -o $OUT
      ;;

    polly)
      clang $CFLAGS -O3 -S -emit-llvm $TEST.c -o $OUT -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-vectorizer=none
      ;;

    pollypar)
      clang $CFLAGS -O3 -S -emit-llvm $TEST.c -o $OUT -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-vectorizer=none -mllvm -polly-parallel -mllvm -polly-parallel-force -mllvm -polly-omp-backend=LLVM -mllvm -polly-scheduling=dynamic -mllvm -polly-scheduling-chunksize=4
      ;;

    pluto)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      plutocc --silent --tile $TEST.c -o $TEST.$TOOL.c
      clang $CFLAGS -O3 -S -emit-llvm $TEST.$TOOL.c -o $OUT
      ;;

    plutopar)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      plutocc --silent --parallel --tile $TEST.c -o $TEST.$TOOL.c
      clang $CFLAGS -O3 -S -emit-llvm $TEST.$TOOL.c -o $OUT
      ;;

    polymer)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      mlir-clang $CFLAGS $TEST.c -o $TEST.$TOOL.in.mlir
      polymer-opt -reg2mem \
      -insert-redundant-load \
      -extract-scop-stmt \
      -canonicalize \
      -pluto-opt="dump-clast-after-pluto=$TEST.$TOOL.cloog" \
      -canonicalize $TEST.$TOOL.in.mlir 2>/dev/null > $TEST.$TOOL.out.mlir

      mlir-opt -lower-affine -convert-scf-to-std -canonicalize -convert-std-to-llvm $TEST.$TOOL.out.mlir |\
        mlir-translate -mlir-to-llvmir > $OUT
      ;;

    polymerpar)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      # TODO add parallelism flag
      mlir-clang $CFLAGS $TEST.c -o $TEST.$TOOL.in.mlir
      polymer-opt --demote-loop-reduction \
           --extract-scop-stmt \
           --pluto-opt='parallelize=1' \
           --inline \
           --canonicalize \
	   # This is needed?
      	   --pluto-opt="dump-clast-after-pluto=$TEST.$TOOL.cloog" \
      -canonicalize $TEST.$TOOL.in.mlir 2>/dev/null > $TEST.$TOOL.out.mlir

      mlir-opt --mem2reg \
           --detect-reduction \
           --mem2reg \
           --canonicalize \
           --affine-parallelize \
           --lower-affine \
           --convert-scf-to-openmp \
           --convert-scf-to-std \
           --convert-openmp-to-llvm  $TEST.$TOOL.out.mlir |\ 
	mlir-translate -mlir-to-llvmir > $OUT
      ;;

    *)
      echo "Illegal tool $TOOL"
      exit 1
      ;;
  esac
  clang $BASE/utilities/polybench.c -O3 -march=native $OUT -o $TEST.$TOOL.exe -lm -fopenmp
}

for dir in $dirList; do
  cd "$BASE/$dir"
  for subDir in `ls`; do
    cd $subDir


    ## compiling clang -O3.
    S="$CC $CFLAGS"
    S+=" $BASE/utilities/polybench.c $subDir.c $LDFLAGS -o $subDir.clang.exe"
    # compile
    #$S

    ## compiling polly and clang -O3.
    S="$CCPolly $CFLAGS"
    S+=" $BASE/utilities/polybench.c $subDir.c $LDFLAGS -o $subDir.polly.exe"
    # compile
    #$S

    ## compiling polly parallel and clang -O3.
    S="$CCPollyParallel $CFLAGS"
    S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
    S+=" $BASE/utilities/polybench.c $subDir.c $LDFLAGS -lomp -o $subDir.polly.parallel.exe"
    # compile
    #$S

    if [[ $subDir != "adi" ]]
    then
      ## compiling pluto and clang -O3.
      S=$CCPluto
      S+=" $subDir.c -o $subDir.pluto.c"
      $S
      S="$CC $CFLAGS"
      S+=" $BASE/utilities/polybench.c $subDir.pluto.c $LDFLAGS -o $subDir.pluto.exe"
      # compile
      $S

      ## compiling pluto paralle and clang -O3.
      S=$CCPlutoParallel
      S+=" $subDir.c -o $subDir.pluto.parallel.c"
      $S
      S="$CC $CFLAGS"
      S+=" $BASE/utilities/polybench.c $subDir.pluto.parallel.c $LDFLAGS -fopenmp -o $subDir.pluto.parallel.exe"
      # compile
      #$S
    fi

    ## compiling mlir-clang.
    S="$CCMlir $CFLAGS"
    S+=" $subDir.c $BASE/utilities/polybench.c"
    S+=" --emit-llvm"
    #compile
    $S | clang -x ir - -O3 -o $subDir.mlir.exe
    echo $S

    clang=$subDir.clang
    polly=$subDir.polly
    pollypar=$subDir.polly.parallel
    pluto=$subDir.pluto
    plutopar=$subDir.pluto.parallel
    #mlir=$subDir.mlir

    for i in 1 2 3; do
      t=$(taskset -c 1-8 numactl -i all ./$subDir.clang.exe)
      clang="$clang:$t"

      t=$(taskset -c 1-8 numactl -i all ./$subDir.polly.exe)
      polly="$polly:$t"

      t=$(taskset -c 1-8 numactl -i all ./$subDir.polly.parallel.exe)
      pollypar="$pollypar:$t"

      t=$(taskset -c 1-8 numactl -i all ./$subDir.pluto.exe)
      pluto="$pluto:$t"

      t=$(taskset -c 1-8 numactl -i all ./$subDir.pluto.parallel.exe)
      plutopar="$plutopar:$t"

      #t=`./$subDir.mlir.exe`
      #mlir="$mlir:$t"

    done

    echo $clang
    echo $polly
    echo $pollypar
    echo $pluto
    echo $plutopar
    #echo $mlir

    cd ../
  done
done
