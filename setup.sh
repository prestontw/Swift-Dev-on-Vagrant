#!/bin/bash

echo "starting installation of base apps"
sudo apt-get install -y make vim git

# set up minimal vim configuration
git clone https://github.com/prestontw/dotfiles
mv /home/vagrant/dotfiles/.vinimal /home/vagrant/.vimrc
echo "done setting up vim"

# script to set up swift on vagrant
sudo apt-get install -y clang libicu-dev
curl -O https://swift.org/builds/swift-2.2-release/ubuntu1404/swift-2.2-RELEASE/swift-2.2-RELEASE-ubuntu14.04.tar.gz
# skipping verifying gpg, etc
tar xzf swift-2.2-RELEASE-ubuntu14.04.tar.gz
#profile="/home/vagrant/.bashrc"
#echo "export PATH=$PATH:~/usr/local/gupc/bin" >> $profile
#source $profile

echo done with setup!
