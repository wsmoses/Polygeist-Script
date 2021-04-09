
#!/bin/bash

export PATH=$HOME/mlir-gpu/build/bin:$PATH
export PATH=$HOME/pluto:$PATH

stdinclude=$HOME/mlir-gpu/llvm/../clang/lib/Headers

CC='clang -O3'

CCPolly='clang -O3 -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-vectorizer=stripmine'
CCPollyParallel='clang -O3 -mllvm -polly -mllvm -polly-pattern-matching-based-opts=false -mllvm -polly-vectorizer=stripmine -mllvm -polly-parallel -mllvm -polly-parallel-force -mllvm -polly-omp-backend=LLVM -mllvm -polly-scheduling=dynamic -mllvm -polly-scheduling-chunksize=4'

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

#dirList="linear-algebra/blas"

for dir in $dirList; do
  if [ -d $dir ]; then
    cd $dir
    #echo $dir
    for subDir in `ls`; do
      cd $subDir

      ## compiling clang -O3.
      S=$CC
      S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
      S+=" $BASE/utilities/polybench.c $subDir.c -DPOLYBENCH_TIME -DPOLYBENCH_NO_FLUSH_CACHE $LDFLAGS -o $subDir.clang.exe"
      # compile
      #$S

      ## compiling polly and clang -O3.
      S=$CCPolly
      S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
      S+=" $BASE/utilities/polybench.c $subDir.c -DPOLYBENCH_TIME -DPOLYBENCH_NO_FLUSH_CACHE $LDFLAGS -o $subDir.polly.exe"
      # compile
      #$S

      ## compiling polly parallel and clang -O3.
      S=$CCPollyParallel
      S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
      S+=" $BASE/utilities/polybench.c $subDir.c -DPOLYBENCH_TIME -DPOLYBENCH_NO_FLUSH_CACHE $LDFLAGS -lomp -o $subDir.polly.parallel.exe"
      # compile
      #$S

      if [[ $subDir != "adi" ]]
      then
        ## compiling pluto and clang -O3.
        S=$CCPluto
        S+=" $subDir.c -o $subDir.pluto.c"
        $S
        S=$CC
        S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
        S+=" $BASE/utilities/polybench.c $subDir.pluto.c -DPOLYBENCH_TIME -DPOLYBENCH_NO_FLUSH_CACHE $LDFLAGS -o $subDir.pluto.exe"
        # compile
        $S

        ## compiling pluto paralle and clang -O3.
        S=$CCPlutoParallel
        S+=" $subDir.c -o $subDir.pluto.parallel.c"
        $S
        S=$CC
        S+=" -I $BASE/utilities -I $(pwd) -I $stdinclude"
        S+=" $BASE/utilities/polybench.c $subDir.pluto.parallel.c -DPOLYBENCH_TIME -DPOLYBENCH_NO_FLUSH_CACHE $LDFLAGS -fopenmp -o $subDir.pluto.parallel.exe"
        # compile
        #$S
      fi

      ## compiling mlir-clang. 
      S=$CCMlir
      S+=" $subDir.c $BASE/utilities/polybench.c"
      S+=" -D POLYBENCH_TIME -D POLYBENCH_NO_FLUSH_CACHE -I $stdinclude -I $BASE/utilities -I $(pwd) --emit-llvm"
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
        t=`taskset -c 1-8 numactl -i all ./$subDir.clang.exe`
        clang="$clang:$t"

        t=`taskset -c 1-8 numactl -i all ./$subDir.polly.exe`
        polly="$polly:$t"

        t=`taskset -c 1-8 numactl -i all ./$subDir.polly.parallel.exe`
        pollypar="$pollypar:$t"

        t=`taskset -c 1-8 numactl -i all ./$subDir.pluto.exe`
        pluto="$pluto:$t"

        t=`taskset -c 1-8 numactl -i all ./$subDir.pluto.parallel.exe`
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
    if [ $dir == 'linear-algebra/blas' ] || 
       [ $dir == 'linear-algebra/kernels' ] ||
       [ $dir == 'linear-algebra/solvers' ]; then
      cd ../..
    else
      cd ../
    fi
  fi
done
