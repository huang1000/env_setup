#! /bin/bash

git clone https://github.com/tmbdev/ocropy.git
cd ocropy
wget -nd http://www.tmbdev.net/en-default.pyrnn.gz
mv en-default.pyrnn.gz models/
python setup.py install

./run-test
