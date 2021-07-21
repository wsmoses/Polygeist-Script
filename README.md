# Polygeist-Script

Pluto Deps:
sudo apt-get install pkg-config git libtool autoconf flex bison libgmp3-dev texinfo llvm-dev libclang-dev texlive-full 

How to run:
1. Get pluto use commit (dae26e77b94b2624a540c08ec7128f20cd7b7985)
2. get polygeist use branch (https://github.com/wsmoses/Polygeist/tree/main-042621)
3. enable mlir, clang, openmp, polly
4. patch omp.h in the build directory
5. run hyper.sh
6. run run.sh in polybench directory
