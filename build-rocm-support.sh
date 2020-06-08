#!/bin/sh

### TODO: add root path of ROCM library, E.g., ROCM_HOM=/opt/rocm
ROCM_HOME=

./autogen.sh
./configure --prefix=$PWD/install-rocm-gpu HIP_PATH=$ROCM_HOME

make
make install
