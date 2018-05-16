#! /bin/bash

gpu=$( lspci -vnn | grep NVIDIA )
#echo $gpu

if [ -z $gpu ]; then
    echo "No GPU"
else
    nvidia-smi
fi

