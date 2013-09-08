#!/bin/sh

# setup virtualenv and the wrapper
echo "Installing virtualenv"
pip install virtualenv
pip install virtualenvwrapper

mkvirtualenv zipfian-dist

# install IPython and IPython notebook and dependencies
echo "Installing IPython"
easy_install ipython[all]

# test if the IPython install was successful
if [ ! iptest ]
then
	echo "IPython install tests FAILED"
	echo "Please reinstall"
	exit 1
fi

# install scientific Python libraries
echo "Installing Scipy"
sudo apt-get install -y python-scipy libblas-dev liblapack-dev gfortran freetype*
sudo easy_install -U distribute
echo "export BLAS=/usr/lib/libblas.so" >> ~/.profile
echo "export LAPACK=/usr/lib/liblapack.so" >> ~/.profile

echo "Installing Numpy"
pip install numpy
echo "Installing Matplotlib"
pip install matplotlib
pip install scipy
echo "Installing Scikit-learn"
pip install scikit-learn
echo "Installing pandas"
pip install pandas
echo "Installing statsmodels"
pip install statsmodels
echo "Installing networkx"
pip install networkx
echo "Installing Pymc"
pip install pymc
echo "Installing patsy"
pip install patsy
echo "Installing nltk"
pip install nltk
echo "... And downloading the data/corpus"
sudo python -m nltk.downloader -d /usr/share/nltk_data all

# install other Python libraries
echo "Installing Flask"
pip install flask
echo "Installing Requests"
pip install requests
echo "Installing Beautiful Soup 4"
pip install beautifulsoup4
echo "Installing PyMongo"
pip install pymongo
echo "Installing SQL Alchemy"
pip install sqlalchemy
