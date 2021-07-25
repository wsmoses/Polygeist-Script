###########################################################
#
# Docker image for Polygeist artifact evaluation.
#
###########################################################

FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ARG GID
ARG UID
RUN echo "Group ID: $GID"
RUN echo "User ID: $UID"

# Essential packages
RUN apt-get update
RUN apt-get install apt-utils
RUN apt-get -y install tzdata --assume-yes

RUN apt-get install build-essential libtool autoconf pkg-config flex bison libgmp-dev clang-9 libclang-9-dev texinfo cmake vim ninja-build git texlive-full --assume-yes

# Change default compilers to make Pluto happy.
RUN update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-9 100
RUN update-alternatives --install /usr/bin/FileCheck FileCheck /usr/bin/FileCheck-9 100
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-9 100
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-9 100

# Let's create a non-root dev-user

CMD ["bash"]

RUN apt-get install sudo --assume-yes

# Add dev-user
RUN useradd -r -g root -u 1001 -m -d /home/dev-user -s /sbin/nologin -c "User" dev-user
RUN echo "dev-user     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER dev-user

RUN echo 'PATH=$PATH:$HOME/workspace/llvm/build/bin:$HOME/workspace/build/bin' >> $HOME/.bashrc
RUN echo 'LD_LIBRARY_PATH=$HOME/workspace/build/pluto/lib:$LD_LIBRARY_PATH' >> $HOME/.bashrc
RUN mkdir $HOME/workspace

# Everything will be put under this workspace directory
WORKDIR /home/dev-user/workspace

# Install Pluto
RUN git clone https://github.com/bondhugula/pluto \
  && cd pluto/ \
  && git submodule init \
  && git submodule update \
  && ./autogen.sh \
  && ./configure
RUN cd pluto && make -j$(nproc)


# Install mlir-clang
RUN git clone -b main-042621 --single-branch https://github.com/wsmoses/Polygeist mlir-clang
RUN cd mlir-clang \
    && mkdir build \
    && cd build \
    && cmake -G Ninja ../llvm \
         -DLLVM_ENABLE_PROJECTS="mlir;polly;clang;openmp" \
         -DLLVM_BUILD_EXAMPLES=ON \
         -DLLVM_TARGETS_TO_BUILD="host" \
         -DCMAKE_BUILD_TYPE=Release \
         -DLLVM_ENABLE_ASSERTIONS=ON   
RUN cd mlir-clang/build && ninja -j $(nproc) 

# Install Polymer
RUN git clone --recursive https://github.com/kumasento/polymer 
RUN cd polymer && git checkout pact && git submodule update --recursive --init
RUN cd polymer \
    && mkdir llvm/build \
    && cd llvm/build \
    && cmake ../llvm \
      -DLLVM_ENABLE_PROJECTS="llvm;clang;mlir" \
      -DLLVM_TARGETS_TO_BUILD="host" \
      -DLLVM_ENABLE_ASSERTIONS=ON \
      -DCMAKE_BUILD_TYPE=DEBUG \
      -DLLVM_INSTALL_UTILS=ON \
      -DCMAKE_C_COMPILER=clang \
      -DCMAKE_CXX_COMPILER=clang++ \
      -G Ninja 
RUN cd polymer/llvm/build && ninja -j$(nproc)
