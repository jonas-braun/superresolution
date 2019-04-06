#!/bin/bash

# pip and venv are broken in debian install. get new version
python3 -m venv --without-pip .env
source .env/bin/activate

wget https://pypi.python.org/packages/source/s/setuptools/setuptools-3.4.4.tar.gz
tar xzf setuptools-3.4.4.tar.gz
cd setuptools-3.4.4
python3 setup.py install

wget https://pypi.python.org/packages/source/p/pip/pip-1.5.6.tar.gz
tar xzf pip-1.5.6.tar.gz
cd pip-1.5.6
python3 setup.py install

cd ..
deactivate
