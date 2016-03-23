# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'
 
Vagrant.configure("2") do |config|
  # create our image
  config.vm.define "testdev" do |a|
    a.vm.provider "docker" do |d|
      d.image = "localuser/dev_base:S16"
      d.name = "swift_development"
      d.has_ssh = true
    end
  end

  # could maybe try to do something here with ownership to fully automate provisioning
  # config.vm.share_folder :owner => "vagrant"

  # configure our image using shell commands
  config.vm.provision :shell, :path => "setup.sh"
end
