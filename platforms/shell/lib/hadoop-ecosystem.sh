#!/bin/sh

# install Java for Hadoop and its ecosystem
sudo apt-get install -y openjdk-7-jre
sudo apt-get install -y openjdk-7-jdk

# wrapper for running Java application in the browser
sudo apt-get install -y icedtea-plugin

# install Maven to handle Java dependencies
sudo apt-get install -y maven
echo "export PATH=/usr/share/maven/bin:$PATH" >> ~/.profile

# install Apache Big Top and associated libraries
wget -O- http://archive.apache.org/dist/bigtop/bigtop-0.5.0/repos/GPG-KEY-bigtop | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/bigtop.list http://www.apache.org/dist/bigtop/bigtop-0.6.0/repos/`lsb_release --codename --short`/bigtop.list

sudo apt-get update
sudo apt-get install -y bigtop-utils

# fix any broken dependencies
sudo apt-get install -f

# install hadoop core and management frameworks
sudo apt-get install -y hadoop hue zookeeper whirr

# install highlevel mapreduce abstraction languages
sudo apt-get install -y mahout hive pig pig-udf-datafu giraph crunch 
  
# install hadoop utility frameworks
sudo apt-get install -y flume-* hbase sqoop solr oozie hcatalog

# alias hue
echo "alias hue=\"/usr/lib/hue/build/env/bin/hue\"" >> ~/.profile

# download and build spark and pyspark

# Vagrant box specific path -- Set this to where you want Spark installed
mkdir lib
cd lib
sudo wget http://spark-project.org/download/spark-0.7.3-prebuilt-cdh4.tgz
sudo tar -zxvf spark-0.7.3-prebuilt-cdh4.tgz
cd spark-0.7.3/
sbt/sbt package

# create an alias to run spark from anywhere in the directory tree
CUR_DIR=$(pwd)
echo "alias spark-repl=\"${CUR_DIR}/spark-shell\"" >> ~/.profile

. ~/.profile