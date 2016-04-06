#!/bin/bash

# it would be nice if this had some variables...

echo "starting installation of base apps"
sudo apt-get install -y make vim git

# set up minimal vim configuration
git clone https://github.com/prestontw/dotfiles
mv /home/vagrant/dotfiles/.vinimal /home/vagrant/.vimrc
echo "done setting up vim"

# script to set up swift on vagrant
sudo apt-get install -y clang libicu-dev libxml2
swiftWebsite="https://swift.org/builds/swift-2.2-release/ubuntu1404/swift-2.2-RELEASE/"
swiftPackage="swift-2.2-RELEASE-ubuntu14.04"
tarEnding=".tar.gz"
binEnding="/usr/bin"

curl -O $swiftWebsite$swiftPackage$tarEnding
# skipping verifying gpg, etc
tar xzf $swiftPackage$tarEnding
profile="/home/vagrant/.bashrc"
echo "export PATH=$PATH:~/$swiftPackage$binEnding" >> $profile
source $profile

echo done with setup!
