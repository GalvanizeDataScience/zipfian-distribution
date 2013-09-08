#!/bin/sh

# installing R: http://craig-russell.co.uk/2012/05/08/install-r-on-ubuntu.html#.UixVVWQ4VjY
# add package to apt
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

sudo chmod u+wx /etc/apt/sources.list
sudo echo "deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

# install R using apt-get
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y r-base

# install Chromium for IPython notebooks and web development
sudo apt-get install -y chromium-browser

# install pip for python packages
sudo apt-get install -y python-pip

# install git
sudo apt-get install -y git gitk

# install curl
sudo apt-get install -y curl

# install imagemagick
sudo apt-get install -y imagemagick

# install editors
sudo apt-get install -y vim emacs

# install databases
sudo apt-get install -y sqlite3 mongodb postgresql postgresql-contrib pgadmin3 libpq-dev

# install screen
sudo apt-get install -y screen

# install scala
sudo apt-get install -y scala


