#!/bin/sh

# install C/C++ compiler before we do anything 
sudo apt-get install -y gcc g++

# installing R: http://craig-russell.co.uk/2012/05/08/install-r-on-ubuntu.html#.UixVVWQ4VjY
# add package to apt
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

sudo chmod u+wx /etc/apt/sources.list
sudo echo "deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu precise/" >> /etc/apt/sources.list

# add sbt to package repository
wget http://apt.typesafe.com/repo-deb-build-0002.deb
sudo dpkg -i repo-deb-build-0002.deb

rm repo-deb-build-0002.deb

# install R using apt-get
sudo apt-get update -y 
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
sudo apt-get install -y r-base

# install browsers for IPython notebooks and web development
sudo apt-get install -y firefox
sudo apt-get install -y chromium-browser

# install pip for python packages
sudo apt-get install -y python-pip

# install git
sudo apt-get install -y git gitk git-man

# install a calculator!
sudo apt-get install -y bc

# Yay Sparklines!
sudo wget -O /usr/bin/spark "https://raw.github.com/holman/spark/master/spark"

# install curl
sudo apt-get install -y curl

# install imagemagick
sudo apt-get install -y imagemagick

# install editors
sudo apt-get install -y vim emacs

# install databases
sudo apt-get install -y sqlite3 mongodb postgresql postgresql-contrib pgadmin3 libpq-dev

# alias psql to to login with default postgres user
echo "alias psql-root=\"sudo -u postgres psql\"" >> ~/.profile

# install screen
sudo apt-get install -y screen

# install pandoc for nbconvert
sudo apt-get install -y pandoc

# Urchin lets you tests shell scripts with shell
# install it: https://github.com/scraperwiki/urchin
cd /usr/local/bin
sudo wget https://raw.github.com/scraperwiki/urchin/master/urchin
sudo chmod +x urchin
cd ~/

# install scala
sudo apt-get install -y scala

# install sbt
sudo apt-get install -y sbt

# install 0mq
sudo apt-get install -y libzmq1
sudo apt-get install -y python-zmq
sudo apt-get install -y libyaml-dev