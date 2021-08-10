# Polygeist-Script

[![DOI](https://zenodo.org/badge/356307632.svg)](https://zenodo.org/badge/latestdoi/356307632)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/kumasento/polygeist)
![Docker Pulls](https://img.shields.io/docker/pulls/kumasento/polygeist)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/kumasento/polygeist)

## Use Docker

We provide a docker file that creates the environment automatically.

```bash
# Build the image by yourself
docker build -t polygeist .
# Turn off hyperthreading outside Docker
sudo bash hyper.sh
# Run the script
docker run --privileged polygeist /bin/bash -c "cd Polygeist-Script/polybench-c-4.2.1-beta && ./run.sh"
```


You can also pull a pre-built Docker image - 

```bash
docker pull kumasento/polygeist
# Turn off hyperthreading outside Docker
sudo bash hyper.sh
# Run the script
docker run --privileged kumasento/polygeist /bin/bash -c "cd Polygeist-Script/polybench-c-4.2.1-beta && ./run.sh"
```


## Run manually

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
$ mkdir llvm-project/build
$ cd llvm-project/build
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
$ git clone --recursive https://github.com/kumasento/polymer -b pact
```

Build polymer

```sh
# At the top-level directory within polymer
$ mkdir llvm/build
$ cd llvm/build
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
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DLLVM_EXTERNAL_LIT=${PWD}/../llvm/build/bin/llvm-lit \
  -G Ninja
ninja -j$(nproc)
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
