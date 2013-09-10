#!/bin/sh

echo "Welcome to the Mac OSX quickstart!"
echo "Installing Mac OSX specific dependencies..."

# VirtualBox
echo "Would you like to install VirtualBox: [Y/n]?"
read ANSWER

if [ $ANSWER == 'Y' ]
then
	echo "Installing VirtualBox:"

	# install VirtualBox: https://www.virtualbox.org/
	wget -O ~/Downloads/VirtualBox-4.2.18-88780-OSX.dmg http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg

	# Mount image
	hdiutil attach -mountpoint /Volumes/VirtualBox ~/Downloads/VirtualBox-4.2.18-88780-OSX.dmg

	echo "Installing .pkg"
	# Install package
	sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /

	echo "Cleaning up"
	# detach image and cleanup files
	hdiutil detach /Volumes/VirtualBox
	rm ~/Downloads/VirtualBox-4.2.18-88780-OSX.dmg

	echo "VirtualBox Successfully installed!"
else
	echo "Skipping install of VirtualBox"
fi

# Vagrant
echo "Would you like to install Vagrant: [Y/n]?"
read ANSWER

if [ $ANSWER == 'Y' ]
then
	echo "Installing Vagrant:"

	# install Vagrant: http://www.vagrantup.com/
	wget -O ~/Downloads/Vagrant-1.3.1.dmg http://files.vagrantup.com/packages/b12c7e8814171c1295ef82416ffe51e8a168a244/Vagrant-1.3.1.dmg

	# Mount image
	hdiutil attach -mountpoint /Volumes/Vagrant ~/Downloads/Vagrant-1.3.1.dmg

	echo "Installing .pkg"
	# Install package
	sudo installer -pkg /Volumes/Vagrant/Vagrant.pkg -target /

	echo "Cleaning up"
	# detach image and cleanup files
	hdiutil detach /Volumes/Vagrant
	rm ~/Downloads/Vagrant-1.3.1.dmg

	echo "Vagrant Successfully installed!"
else
	echo "Skipping install of Vagrant"
fi

# XQuartz
echo "Would you like to install XQuartz: [Y/n]?"
read ANSWER

if [ $ANSWER == 'Y' ]
then
	echo "Installing XQuartz:"

	# install XQuartz: http://xquartz.macosforge.org/landing/ 
	wget -O ~/Downloads/XQuartz-2.7.4.dmg http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.4.dmg 

	# Mount image
	hdiutil attach -mountpoint /Volumes/XQuartz-2.7.4 ~/Downloads/XQuartz-2.7.4.dmg 

	echo "Installing .pkg"
	# Install package
	sudo installer -pkg /Volumes/XQuartz-2.7.4/XQuartz.pkg -target /

	echo "Cleaning up"
	# detach image and cleanup files
	hdiutil detach /Volumes/XQuartz-2.7.4
	rm ~/Downloads/XQuartz-2.7.4.dmg

	echo "XQuartz Successfully installed!"
else
	echo "Skipping install of XQuartz"
fi

# Now that dependencies should be installed, download the Vagrant files/Box
echo "Downloading Zipfian Distribution Vagrantfile"
wget "http://zipfianacademy.com/downloads/zipfian-distribution/vagrant/Vagrantfile"