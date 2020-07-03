#! /bin/sh
conda install -c conda-forge -y jupyterlab
conda install -c conda-forge -y notebook
conda install -c conda-forge -y voila
conda install -c conda-forge -y jupyter_conda
jupyter labextension install jupyterlab_conda
