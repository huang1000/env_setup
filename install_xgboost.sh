#! /bin/bash

git clone --recursive https://github.com/dmlc/xgboost
gpu=$( ./check_gpu.sh )
if [ "$gpu" = "No GPU" ]; then
    cd xgboost; make -j4
else
    echo "GPU is detected"
    cd xgboost && mkdir build
    cd build && cmake .. -DUSE_CUDA=ON
    make -j
fi;

cd python-package && python setup.py install

