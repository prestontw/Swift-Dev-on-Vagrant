# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'
 
Vagrant.configure("2") do |config|
    config.vm.provision "shell", line: <<-SHELL
    sudo apt-get -y install clang
    curl -O https://swift.org/builds/ubuntu1404/swift-2.2-SNAPSHOT-2015-12....tar.gz

    tar zxf swift...
    echo "export PATH=/home/vagrant/...:\"${PATH}\"" >> .profile
    echo "swift has successfully installed on Linux"
    SHELL
end

  # create our image
  config.vm.define "testdev" do |a|
    a.vm.provider "docker" do |d|
      d.build_dir = "."
      d.name = "parallel_lab3"
      d.has_ssh = true
    end
  end

  # could maybe try to do something here with ownership to fully automate provisioning
  # config.vm.share_folder :owner => "vagrant"

  # configure our image using shell commands
  config.vm.provision :shell, :path => "setup_upc.sh"
end
