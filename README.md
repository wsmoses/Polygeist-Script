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

Pull mlir-clang

```
$ git clone -b main-042621 --single-branch https://github.com/wsmoses/Polygeist mlir-clang
```

Build mlir-clang:

```
$ cd mlir-clang
$ mkdir llvm-project/build`
$ cd llvm-project/build`
$ cmake -G Ninja ../llvm \
   -DLLVM_ENABLE_PROJECTS="mlir;polly;clang;openmp" \
   -DLLVM_BUILD_EXAMPLES=ON \
   -DLLVM_TARGETS_TO_BUILD="X86;NVPTX;AMDGPU" \
   -DCMAKE_BUILD_TYPE=Release \
   -DLLVM_ENABLE_ASSERTIONS=ON \  
   
# Copy the omp.h file from this repo to the build directory of mlir-clang
 ```

Pull polymer

```
$ git clone --recursive https://github.com/kumasento/polymer 
```

Build polymer

```
$ cd polymer
$ git clone https://github.com/wsmoses/Polygeist.git llvm-project
$ cd llvm-project
$ git reset --hard 19da7eee184e4d715d9870fe866ac10858e874d1

# At the top-level directory within polymer
$ mkdir llvm-project/build
$ cd llvm-project/build
$ cmake ../llvm \
  -DLLVM_ENABLE_PROJECTS="llvm;clang;mlir" \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_BUILD_TYPE=DEBUG \
  -DLLVM_INSTALL_UTILS=ON \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -G Ninja
ninja -j$(nproc)
ninja check-mlir

# At the top-level directory within polymer
mkdir build
cd build
cmake .. \
  -DCMAKE_BUILD_TYPE=DEBUG \
  -DMLIR_DIR=$PWD/../llvm/build/lib/cmake/mlir \
  -DLLVM_DIR=$PWD/../llvm/build/lib/cmake/llvm \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_C_COMPILER=clang-9 \
  -DCMAKE_CXX_COMPILER=clang++-9 \
  -DLLVM_EXTERNAL_LIT=${PWD}/../llvm/build/bin/llvm-lit \
  -G Ninja
ninja

# Could also add this LD_LIBRARY_PATH to your environment configuration.
LD_LIBRARY_PATH=$PWD/pluto/lib:$LD_LIBRARY_PATH ninja check-polymer

```

Run scripts

```
$ git clone https://github.com/wsmoses/Polygeist-Script.git scripts
$ cd scripts
$ cd polybench-c-4.2.1-beta
$ hyper.sh
# change path on script run.sh based on your installation
$ run.sh
```