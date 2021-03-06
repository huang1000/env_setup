#! /bin/bash
# install anaconda
fileURL="https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh"
fileURL="https://repo.anaconda.com/archive/Anaconda2-2019.07-Linux-x86_64.sh"
fileURL="https://repo.anaconda.com/archive/Anaconda3-2020.02-MacOSX-x86_64.sh"
file=$(basename $fileURL)
if [ -f ./$file ]; then
    echo "./$file detected."
else
    wget $fileURL -P .
fi
if [ -f ./$file ]; then
    #bash "./$file" -u -b -p $HOME/anaconda2
    sh ./$file
    #echo 'export PATH="$HOME/anaconda2/bin:$PATH"' >> $HOME/.zshrc
    #conda install -c conda-forge wordcloud
    #conda install --file python_env/fraud_packages.txt
    #source $HOME/.zshrc
else
    echo "Failed to obtain: ./$file"
    return 1
fi
