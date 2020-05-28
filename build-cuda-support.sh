#!/bin/sh

### TODO: add root path of CUDA toolkit, E.g., CUDA_HOM=/opt/cuda/10.2
CUDA_HOME=

./autogen.sh
./configure --prefix=$PWD/install-cuda CUDA_H_PATH=$CUDA_HOME/include/cuda.h

make
make install
