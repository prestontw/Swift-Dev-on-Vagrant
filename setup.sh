#!/bin/bash

echo test > test.txt
sudo apt-get install -y make vim git clang

# set up minimal vim configuration
git clone https://github.com/prestontw/dotfiles
mv /home/vagrant/dotfiles/.vinimal /home/vagrant/.vimrc
echo done setting up vim

# script to set up swift on vagrant
#curl -O https://swift.org/builds/ubuntu1404/swift-2.2-SNAPSHOT-2015-12....tar.gz
#tar zxf file
#profile="/home/vagrant/.bashrc"
#echo "export PATH=$PATH:~/usr/local/gupc/bin" >> $profile
#source $profile

echo done with setup!
