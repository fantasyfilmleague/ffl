# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  # Networking
  config.vm.network :forwarded_port, guest: 4334, host: 4334
  config.vm.network :forwarded_port, guest: 3449, host: 3449

  config.vm.provider "virtualbox" do |v|
    v.name = "ffl"
    v.memory = 2048
  end

  config.vm.provision :shell, path: "provision.sh"
end
