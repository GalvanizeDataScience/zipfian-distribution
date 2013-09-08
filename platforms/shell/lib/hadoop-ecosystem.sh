# install Java for Hadoop and its ecosystem
sudo apt-get install openjdk-7-jre

# wrapper for running Java application in the browser
sudo apt-get install icedtea-plugin

# install Maven to handle Java dependencies
sudo apt-get install maven
echo "export PATH=/usr/share/maven/bin:$PATH" >> ~/.profile

# install Apache Big Top and associated libraries
wget -O- http://archive.apache.org/dist/bigtop/bigtop-0.5.0/repos/GPG-KEY-bigtop | sudo apt-key add -
sudo wget -O /etc/apt/sources.list.d/bigtop.list http://www.apache.org/dist/bigtop/bigtop-0.6.0/repos/`lsb_release --codename --short`/bigtop.list

sudo apt-get update
sudo apt-get install bigtop-utils

# fix any broken dependencies
sudo apt-get install -f

# install hadoop core and management frameworks
sudo apt-get install hadoop hue zookeeper whirr-*

# install highlevel mapreduce abstraction languages
sudo apt-get install mahout  hive pig pig-udf-datafu mahout giraph crunch 
  
# install hadoop utility frameworks
sudo apt-get install flume-* hbase sqoop solr oozie hcatalog

# download and build spark and pyspark

# Vagrant box specific path -- Set this to where you want Spark installed
mkdir lib
cd lib
sudo wget http://spark-project.org/download/spark-0.7.3-prebuilt-cdh4.tgz
sudo tar -zxvf spark-0.7.3-prebuilt-cdh4.tgz
sudo cd spark-0.7.3/
sudo sbt/sbt package

# create an alias to run spark from anywhere in the directory tree
CUR_DIR=$(pwd)
echo "alias spark-repl=\"${CUR_DIR}/spark-shell\"" >> ~/.profile