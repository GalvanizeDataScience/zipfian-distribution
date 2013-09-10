# The Zipfian Distribution

[![Zipfian Distribution](http://media.smashingmagazine.com/wp-content/uploads/2012/05/Monster-Main.jpg)](http://uxdesign.smashingmagazine.com/2012/05/16/stop-redesigning-start-tuning-your-site/)

An Open Source development environment for getting up and running with data science quickly on any platform (scroll to [quickstart](#quickstart) if you are impatient)!  This repository contains shell scripts to install neccessary packages and programs on Ubuntu 12.04 LTS, as well as libraries for doing data analysis in Python, R, and Hadoop.  All libraries have been tested to play nice together and Python packages are installed in a [virtualenv](https://pypi.python.org/pypi/virtualenv). 

The Zipfian Distribution itself is a [Vagrant](http://www.vagrantup.com/) box based on Ubuntu 12.04 LTS and meant to be a self contained environment runnable on any platform supported by [Virtual Box](https://www.virtualbox.org/) (which is most all of them).  This is the quickest way to get started and most stable. __This is the recommended path of least resistence__ 

The shell scripts are all written for Ubuntu and utilize `apt-get`, which makes them great to spin up machines in the cloud with [Rackspace](http://www.rackspace.com/cloud/servers/) or [AWS](http://aws.amazon.com/ec2/) (or any other cloud provider).  But this dependency severely limits the portability of them to any other OS.  The Python and R libraries are installed using [pip](https://pypi.python.org/pypi/pip) and [CRAN](http://cran.r-project.org/), and should work on any platform.

Read [Vagrant](http://docs.vagrantup.com/v2/getting-started/index.html) docs for a more advanced treatment of customizing the box.

__NOTE: Python 2.7 is the default version for this distribution__

<a name="quickstart"></a>
## Quickstart

### Mac OSX

___IMPORTANT: Run this command from the directory in which you want to download and initialize the Vagrantfile and associated VM.  This should be in the root directory of your project/git repository.  Only run this command once as it downloads large files.  If you would like to use the Vagrant box for other projects, simply copy the Vagrantfile to root of those other projects.___

`bash <(curl -s http://zipfianacademy.com/downloads/zipfian-distribution/install/mac-osx.sh)`

Once the script is done running you should have VirtualBox, Vagrant, and XQuartz installed and ready to start analyzing some data!

1. Initialize the VM: `vagrant up`
2. Login into the guest machine: `vagrant ssh`
3. Change into the synced directory: `cd /vagrant`
4. Make sure all your files are there: `ls -larth`
5. Play!

Thats it!  You should be logged into the guest machine and have all the python/R/Hadoop goodness at your fingertips... try `ipython notebook`

### Windows

Coming Soon!  

### Linux

Coming Soon!
 
<a name="dependencies"></a>
## Dependencies

The only dependency for Vagrant is Virtual Box.  So to get up and running with the Zipfian Distribution you will need to install these two things.  That is all.

* [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://downloads.vagrantup.com/)

For graphical support (i.e. web browser, R studio, IPython notebooks) you will also need to support [X11 forwarding](http://www.seas.upenn.edu/cets/answers/x11-forwarding.html).

To login to the VM you will also need [ssh](http://en.wikipedia.org/wiki/Secure_Shell).

### Windows

* [X11 forwarding](http://www.math.umn.edu/systems_guide/putty_xwin32.html)
* [PuTTY: SSH client](http://www.chiark.greenend.org.uk/~sgtatham/putty/)

### Mac OSX

* [XQuartz](http://xquartz.macosforge.org/landing/)

## What's in Here?!?

### `lib/`

One line install scripts.  Downloads and installs all dependencies (VirtualBox, Vagrant, X11) and then bootstraps the Vagrant VM.  Currently only Mac OSX is supported.

### `platforms/`

Scripts for specific platforms/OSes.  Currently all that is support is shell scripts on Ubuntu 12.04 LTS.  

* [bootstrap.sh](platforms/shell/bootstrap.sh): run all other script files, installs entire environment.
* [ubuntu.sh](platforms/shell/lib/ubuntu.sh): install Ubuntu development libraries and packages.
* [python.sh](platforms/shell/lib/python.sh): install Python packages with pip.
* [hadoop-ecosystem.sh](platforms/shell/lib/hadoop-ecosystem.sh): install Hadoop and associated ecosystem libraries.
* [r.sh](shell/r.sh): install R packages.

### `test/`

This is where automated tests will go to validate the packages/install.  There are currently none.

### `vagrant/`

This is where Vagrant specific files go.  Currently there is the base Vagrantfile for the Zipfian Distribution as well as the Box image.

## Slow start

### Download the Dependencies

[Here!](#dependencies)

### Get the Vagrantfile

`wget http://zipfianacademy.com/downloads/zipfian-distribution/vagrant/Vagrantfile`

### Bootstrap the VM

`vagrant up`

_This Vagrant VM contains approximately XXX of additional files/libraries and takes around YYY minutes... now is a good time to grab a snack_

### SSH into your Machine!

`vagrant ssh`

_NOTE: The Vagrant Box has X11 forwarding enabled, allowing you to run graphical applications (i.e. browser, IPython notebooks, R Studio, etc.) in the VM and have the windows run on the host machine_  


### Synced Files

By default Vagrant syncs the host directory in which the Vagrantfile resides with the `/vagrant` folder on the guest VM.  This is where you will be doing most of your work.  If you would like to change this, modify the Vagrant file [accordingly](http://docs.vagrantup.com/v2/synced-folders/basic_usage.html).

## Vagrant

### Customizing your Box!

Any changes to the configuration of your VM that are put in the [Vagrantfile](vagrant/Vagrantfile) will overwrite the default box configuration. 

Please see the official Vagrant [documentation](http://docs.vagrantup.com/v2/getting-started/index.html) if you would like to customize the VM.

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

### Python

#### Scientific Packages
* [IPython 1.0.0](http://ipython.org/)
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

* [Apache Maven](http://maven.apache.org/)
* [Apache Ant](http://ant.apache.org/)
* [Apache Zookeeper 3.4.5](http://zookeeper.apache.org/)
* [Apache Flume 1.3.1](http://flume.apache.org/)
* [Apache HBase 0.94.5](http://hbase.apache.org/)
* [Apache Pig 0.11.1](http://pig.apache.org/)
* [Apache Hive 0.10.0](http://hive.apache.org/)
* [Apache Sqoop 2 (AKA 1.99.2)](http://sqoop.apache.org/)
* [Apache Oozie 3.3.2](http://oozie.apache.org/)
* [Apache Whirr 0.8.2](http://whirr.apache.org/)
* [Apache Mahout 0.7](http://mahout.apache.org/)
* [Apache Solr](http://lucene.apache.org/solr/) ([SolrCloud](http://wiki.apache.org/solr/SolrCloud)) 4.2.1
* [Apache Crunch (incubating) 0.5.0](http://crunch.apache.org/)
* [Apache HCatalog 0.5.0](http://hive.apache.org/hcatalog/)
* [Apache Giraph 1.0.0](http://giraph.apache.org/)
* [LinkedIn DataFu 0.0.6](http://data.linkedin.com/opensource/datafu)
* [Cloudera Hue 2.3.0](http://cloudera.github.io/hue/)
* [Apache Spark 7.3](http://spark.incubator.apache.org/)
* Cascading (Coming Soon)
* Pycascading (Coming Soon)
* Storm (Coming Soon)
 

## Road map (In no particular order)

* Convert shell scripts to use [Chef](http://www.opscode.com/chef/) or [Puppet](http://puppetlabs.com/) for increased portability of the individual scripts.
* Configure Hadoop ecosystem libraries to start on boot (HDFS, oozie, Hue, etc.)
* Write documentation/tutorials on how to run specific non-standard library installs (i.e. Spark). 
* Add R packages and [R studio](http://www.rstudio.com/)
* Add [Cascading](http://www.cascading.org/)
* Add [Storm](http://storm-project.net/)
* Write automated tests for cross library compatibility
* Create [Homebrew](http://brew.sh/) package for single line install
* Create [Cygwin](http://cygwin.com/packages/) package
* Create Linux packages for the common package managers

## Contributing

Contributions are much appreciated and this repository is meant to be a living document.  Open issues or submit [pull requests](https://help.github.com/articles/creating-a-pull-request) if you have a favorite library I missed or a new platform to run this on.

1. Fork it.
2. Create a branch (`git checkout -b my_zipfian`)
3. Commit your changes (`git commit -am "Added The Biggest Data"`)
4. Push to the branch (`git push origin my_zipfian`)
5. Open a [Pull Request](https://github.com/zipfian/zipfian-distribution/pulls)
6. Enjoy a some [GIFs](http://giphy.com/) while waiting

## Community

Keep track of development and community news.

* Follow [@zipfianacademy](http://twitter.com/zipfianacademy) on Twitter.
* Join our email list on our [website](http://zipfianacademy.com) 
* Read and subscribe to the [The Zipfian Academy Blog](http://blog.zipfianacademy.com).
* Have a question that's not a feature request or bug report? 
Email jonathan __[AT]__ zipfianacademy __[DOT]__ com

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
* [Apache Spark Guide](http://spark.incubator.apache.org/docs/latest/)
* [R and RStudio in Ubuntu](http://blog.cloud-mes.com/2012/09/16/install-r-and-rstudio-in-ubuntu/)
* [Putty Tutorial](http://lyle.smu.edu/support/contents/index.php/tutorials/49-remote-access/101-putty-tutorial)
* [pydata-science.sh](https://gist.github.com/hdemers/5337229)

## Author

**Jonathan Dinu**

+ [http://twitter.com/clearspandex](http://twitter.com/clearspandex)
+ [http://github.com/Jay-Oh-eN](https://github.com/Jay-Oh-eN)

## Copyright and license

Copyright (c) 2013 Zipfian, Inc. under [the Apache 2.0 license](LICENSE).