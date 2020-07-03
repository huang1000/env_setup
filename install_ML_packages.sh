#! /bin/sh

source ~/env_setup/install_pkg.sh

[ -z "$(conda list | grep jupyterlab)" ] && { echo "installing jupyterlab..."; ~/env_setup/install_jupyterlab.sh; }

[ -z "$(conda list | grep skfeature)" ] && { echo "installing scikit-feature..."; ~/env_setup/install_scikit-feature.sh; }

for pkg in scikit-learn scipy tsne xgboost lightgbm textblob Boruta catboost tensorflow beautifulsoup4 lxml langdetect xlrd spacy opencc networkx gensim node2vec transformers pytorch tensorflow_hub pyarrow pytorch-transformers opencv-python
do
    install_pkg $pkg
done
