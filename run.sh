
#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

export PATH=$HOME/mlir-gpu/build/bin:$PATH
export PATH=$HOME/pluto:$PATH

stdinclude=$HOME/mlir-gpu/llvm/../clang/lib/Headers

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
      clang $CFLAGS -O3 -S -emit-llvm $TEST.c -o $OUT \ 
        -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-vectorizer=none
      ;;

    pollypar)
      clang $CFLAGS -O3 -S -emit-llvm $TEST.c -o $OUT \
	      -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false \
	      -mllvm -polly-vectorizer=none -mllvm -polly-parallel -mllvm \
	      -polly-parallel-force -mllvm -polly-omp-backend=LLVM \
	      -mllvm -polly-scheduling=dynamic -mllvm -polly-scheduling-chunksize=4
      ;;

    pluto)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      # NOTE: in recent version pluto use --tile and --parallel as def.
      polycc --silent --tile --noparallel $TEST.c -o $TEST.$TOOL.c
      clang $CFLAGS -O3 -S -emit-llvm $TEST.$TOOL.c -o $OUT
      ;;

    plutopar)
      if [[ $subDir == "adi" ]]
      then
        RESULT="$TOOL:nan"
        return
      fi
      polycc --silent --parallel --tile $TEST.c -o $TEST.$TOOL.c
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
      #TODO add parallelism flag
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
  # TODO
  if [[ $1 == "clang" || $1 == "polly" || $1 == "pluto" || $1 == "mlir-clang" ]] 
  then 
  	clang $BASE/utilities/polybench.c -O3 -march=native $OUT -o $TEST.$TOOL.exe -lm
  else 
	clang $BASE/utilities/polybench.c -O3 -march=native $OUT -o $TEST.$TOOL.exe -lm -fopenmp
  fi	
}

for dir in $dirList; do
  cd "$BASE/$dir"
  for subDir in `ls`; do
    cd $subDir 
    
    echo $(pwd)
    #for tool in $TOOLS; do
      run "clang" $subDir
    #done 

    cd ../
  done
done
