#!/bin/bash

echo test > test.txt
sudo apt-get install -y gcc g++ make libmpc-dev libnuma-dev vim git

# set up minimal vim configuration
git clone https://github.com/prestontw/dotfiles
mv /home/vagrant/dotfiles/.vinimal /home/vagrant/.vimrc
echo done setting up vim

# script to set up upc on vagrant
wget http://www.gccupc.org/gupc-5201-1/30-gupc-5201-x8664-ubuntu-1204/file
tar xpf file
profile="/home/vagrant/.bashrc"
echo "export PATH=$PATH:~/usr/local/gupc/bin" >> $profile
source $profile

echo done with setup!
