#!/bin/sh

# installing R: http://craig-russell.co.uk/2012/05/08/install-r-on-ubuntu.html#.UixVVWQ4VjY
# add package to apt
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

chmod u+wx /etc/apt/sources.list
echo "deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

# install R using apt-get
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install r-base

# install Chromium for IPython notebooks and web development
sudo apt-get install chromium-browser

# install pip for python packages
sudo apt-get install python-pip

# install git



