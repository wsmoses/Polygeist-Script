
#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

export PATH=$HOME/mlir-gpu/build/bin:$HOME/pluto:$HOME/polymer/build/bin:$PATH

export C_INCLUDE_PATH=$HOME/mlir-gpu/build/projects/openmp/runtime/src
export LD_LIBRARY_PATH=/home/ubuntu/polymer/build/pluto/lib/:/home/ubuntu/mlir-gpu/build/lib

stdinclude=$HOME/mlir-gpu/llvm/../clang/lib/Headers

LDFLAGS=-lm

BASE=$(pwd)

dirList="linear-algebra/blas
         linear-algebra/kernels
         linear-algebra/solvers
         datamining
         stencils
         medley"

dirList="linear-algebra/blas
         linear-algebra/kernels
         linear-algebra/solvers"

CFLAGS="-I $BASE/utilities -I $stdinclude -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D EXTRALARGE_DATASET "

#dirList="linear-algebra/blas"

TOOLS="clangsing clang mlir-clang polly pollypar pluto plutopar polymer polymerpar "

function run()
{ 
  TOOL="$1"
  TEST="$2"
  OUT=$TEST.$TOOL.ll


  echo "RUN: $TOOL with $TEST in $(pwd)"

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
      # NOTE: in recent version pluto use --tile and --parallel as def.
      polycc --silent --tile --noparallel --noprevector --nounrolljam $TEST.c -o $TEST.$TOOL.c
      clang $CFLAGS -O3 -S -emit-llvm $TEST.$TOOL.c -o $OUT
      ;;

    plutopar)
      if [[ $2 == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      polycc --silent --parallel --tile --noprevector --nounrolljam $TEST.c -o $TEST.$TOOL.c
      clang $CFLAGS -O3 -S -emit-llvm $TEST.$TOOL.c -o $OUT
      ;;

    polymer)

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
      
      
      mlir-clang $CFLAGS $TEST.c -o $TEST.$TOOL.in.mlir
      
      polymer-opt --demote-loop-reduction \
           --extract-scop-stmt \
           --pluto-opt='parallelize=1' \
           --inline \
           --canonicalize $TEST.$TOOL.in.mlir 2>/dev/null > $TEST.$TOOL.out.mlir

      mlir-opt -mem2reg -detect-reduction -mem2reg -canonicalize -affine-parallelize -lower-affine -convert-scf-to-openmp -convert-scf-to-std -convert-openmp-to-llvm $TEST.$TOOL.out.mlir | mlir-translate -mlir-to-llvmir > $OUT
      ;;

    *)
      echo "Illegal tool $TOOL"
      exit 1
      ;;
  esac
  
  if [[ $1 == "clang" || $1 == "polly" || $1 == "pluto" || $1 == "mlir-clang" || $1 == "polymer" || $1 == "clangsing" ]] 
  then 
  	clang $BASE/utilities/polybench.c -O3 -march=native $OUT -o $TEST.$TOOL.exe -lm -D POLYBENCH_TIME  -D POLYBENCH_NO_FLUSH_CACHE -D EXTRALARGE_DATASET
  else 
	clang $BASE/utilities/polybench.c -O3 -march=native $OUT -o $TEST.$TOOL.exe -lm -fopenmp -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -D EXTRALARGE_DATASET
  fi	
}

for dir in $dirList; do
  cd "$BASE/$dir"
  for subDir in `ls`; do
    cd $subDir 
    
    echo $(pwd)
    for t in $TOOLS; do
      run $t $subDir
    done

#    for i in 1 2 3 4 5; do
#      for t in $TOOLS; do
#        time=$(taskset -c 1-8 numactl -i all ./$subDir.$t.exe)
#	echo $t:$subDir:$time
#      done
#    done 

    cd ../
  done
done
