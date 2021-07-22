# Polygeist-Script

Pluto Deps:

```
$ sudo apt-get install pkg-config git libtool autoconf flex bison libgmp3-dev texinfo llvm-dev libclang-dev texlive-full
```

Install Pluto:

```
$ git clone git://repo.or.cz/pluto.git

$ cd pluto/

$ git reset --hard dae26e77b94b2624a540c08ec7128f20cd7b7985

$ git submodule init

$ git submodule update

$ ./autogen.sh

$ ./configure
```

Install mlir-clang (now called Polygeist):

```
$ git clone -b main-042621 --single-branch https://github.com/wsmoses/Polygeist
```

Build mlir-clang:

```
$ mkdir llvm-project/build`
$ cd llvm-project/build`
$ cmake -G Ninja ../llvm \
   -DLLVM_ENABLE_PROJECTS=mlir;polly;clang;openmp \
   -DLLVM_BUILD_EXAMPLES=ON \
   -DLLVM_TARGETS_TO_BUILD="X86;NVPTX;AMDGPU" \
   -DCMAKE_BUILD_TYPE=Release \
   -DLLVM_ENABLE_ASSERTIONS=ON \  
 ```


How to run:
1. See Pluto Deps and Install Pluto.
2. See Install and build mlir-clang
3. patch omp.h in the build directory
4. run hyper.sh
5. run run.sh in polybench directory
