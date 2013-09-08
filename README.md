# The Zipfian Distribution

[![Zipfian Distribution](http://media.smashingmagazine.com/wp-content/uploads/2012/05/Monster-Main.jpg)](http://uxdesign.smashingmagazine.com/2012/05/16/stop-redesigning-start-tuning-your-site/)

An Open Source development environment for getting up and running with data science quickly on any platform (scroll to [quickstart](#quickstart) if you are impatient)!  This repository contains shell scripts to install neccessary packages and programs on Ubuntu 12.04 LTS, as well as libraries for doing data analysis in Python, R, and Hadoop.  All libraries have tested to play nice together and Python packages are installed in a [virtualenv](https://pypi.python.org/pypi/virtualenv). 

The Zipfian Distribution itself is a [Vagrant](http://www.vagrantup.com/) box meant to be a self contained environment runnable on any platform supported by [Virtual Box](https://www.virtualbox.org/) (which is most all of them).  This is the quickest way to get started and most stable. __This is the recommended path of least resistence__ 

The shell scripts are all written for Ubuntu and utilize `apt-get`, which makes them great to spin up machines in the cloud with [Rackspace](http://www.rackspace.com/cloud/servers/) or [AWS](http://aws.amazon.com/ec2/) (or any other cloud provider).  But severely limits the portability of them to any other OS.  The Python and R libraries are installed using [pip](https://pypi.python.org/pypi/pip) and [CRAN](http://cran.r-project.org/), and should work on any platform.

Read [Vagrant](http://docs.vagrantup.com/v2/getting-started/index.html) docs for a user guide.

__NOTE: Python 2.7 is the default version for this distribution__

<a name="quickstart"></a>
## Quickstart

## Dependencies

The only dependency for Vagrant is Virtual Box.  So to get up and running with the Zipfian Distribution you will need to install these two things.  That is all.

* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://downloads.vagrantup.com/)

For graphical support (i.e. web browser, R studio, IPython notebooks) you will also need to support [X11 forwarding](http://www.seas.upenn.edu/cets/answers/x11-forwarding.html).

To login to the VM you will also need [ssh](http://en.wikipedia.org/wiki/Secure_Shell).

### Windows

* [X11 forwarding](http://www.math.umn.edu/systems_guide/putty_xwin32.html).
* [PuTTY: SSH client](http://www.chiark.greenend.org.uk/~sgtatham/putty/)

### Mac OSX

* [XQuartz](http://xquartz.macosforge.org/landing/)

## What's in Here?!?

### `shell/`

* [bootstrap.sh](shell/bootstrap.sh): run all other script files, installs entire environment.
* [python.sh](shell/python.sh): install Python packages with pip.
* [ubuntu.sh](shell/ubuntu.sh): install Ubuntu development libraries and packages. 
* [r.sh](shell/r.sh): install R packages.

### `vagrant/`

## Package List

### Ubuntu

* [R](http://www.r-project.org/) (R Studio optional)
* [Python 2.7](http://docs.python.org/2.7/)
* [pip](https://pypi.python.org/pypi/pip) and [easy_install](http://pythonhosted.org/distribute/easy_install.html)
* [Chromium](http://www.chromium.org/Home)
* [git](http://git-scm.com/) and [gitk](http://lostechies.com/joshuaflanagan/2010/09/03/use-gitk-to-understand-git/)
* [curl](http://curl.haxx.se/)
* [imagemagick](http://www.imagemagick.org/script/index.php)
* [SQLite3](http://www.sqlite.org/)
* [Postgres](http://www.postgresql.org/)
* [MongoDB](http://www.mongodb.org/)
* [Vim](http://www.vim.org/)
* [Emacs](http://www.gnu.org/software/emacs/)
* [screen](http://www.gnu.org/software/screen/)

pyqt
zmq
dh-make
debhelper
devscripts
reprepro
subversion
gcc-c++
fuse
protobuf-compiler
sharutils
asciidoc
xmlto

### Python

#### Scientific Packages
* [IPython](http://ipython.org/)
* [numpy](http://www.numpy.org/)
* [matplotlib](http://matplotlib.org/)
* [scipy](http://www.scipy.org/)
* [scikit-learn](http://scikit-learn.org/stable/)
* [pandas](http://pandas.pydata.org/)
* [statsmodels](http://statsmodels.sourceforge.net/)
* [networkx](http://networkx.github.io/)
* [nltk](http://nltk.org/)
* [pymc](http://pymc-devs.github.io/pymc/)
* [patsy](http://patsy.readthedocs.org/en/latest/overview.html)
* [virtualenv](https://pypi.python.org/pypi/virtualenv)
* [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/)

#### Utility packages
* [nose](http://nose.readthedocs.org/en/latest/)
* [flask](http://flask.pocoo.org/)
* [sqlalchemy](http://www.sqlalchemy.org/)
* [beautifulsoup4](http://www.crummy.com/software/BeautifulSoup/)
* [pymongo](http://api.mongodb.org/python/current/)
* [requests](http://docs.python-requests.org/en/latest/)


### R

Coming Soon!

### Hadoop Ecosystem

For the associated Hadoop components, we leverage [Apache Bigtop](http://bigtop.apache.org/) to ease the installation process.

* Apache Maven
* Apache Ant
* Apache Zookeeper 3.4.5
* Apache Flume 1.3.1
* Apache HBase 0.94.5
* Apache Pig 0.11.1
* Apache Hive 0.10.0
* Apache Sqoop 2 (AKA 1.99.2)
* Apache Oozie 3.3.2
* Apache Whirr 0.8.2
* Apache Mahout 0.7
* Apache Solr (SolrCloud) 4.2.1
* Apache Crunch (incubating) 0.5.0
* Apache HCatalog 0.5.0
* Apache Giraph 1.0.0
* LinkedIn DataFu 0.0.6
* Cloudera Hue 2.3.0
* Apache Spark
* Cascading (Coming Soon)
* Pycascading (Coming Soon)
* Storm (Coming Soon)
 
## Vagrant

## Resources/References

Here are a list of great sites and tutorials that inspired this project:

* [Scientific Python on Mac OSX](http://www.lowindata.com/2013/installing-scientific-python-on-mac-os-x/)

* [Installing the Scipy stack](http://www.scipy.org/install.html)

* [conda: think pip + virtualenv](http://docs.continuum.io/conda/intro.html)

* [Kaggle: Getting started with Python for Data Science](https://www.kaggle.com/wiki/GettingStartedWithPythonForDataScience)

* [Data Community DC: Getting started with Python for Data Scientists](http://datacommunitydc.org/blog/2013/03/getting-started-with-python-for-data-scientists/)

* [Anaconda Packages](http://docs.continuum.io/anaconda/pkgs.html): great list of relevant Python packages.

* [Scipy Superpack](http://fonnesbeck.github.io/ScipySuperpack): Script to build scientific Python libraries on OSX.

* [Testing that it all works](http://www.pythonbootcamp.info/preparation/testing-that-it-all-works)

* [Apache Bigtop](http://blog.cloudera.com/blog/2013/06/apache-bigtop-the-fedora-of-hadoop-built-on-hadoop2/)

## License

(The MIT License)

Copyright (c) 2013 Zipfian, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
