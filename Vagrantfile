# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.10"

  # Provider-specific configuration so you can fine-tune various
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  config.vm.provision "file",
  source: "~/Desktop/codes/spring_mvc_api/target/spring_mvc_api-0.1.0.jar",
  destination: "/home/vagrant/spring_mvc_api/spring_mvc_api-0.1.0.jar"

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available.

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  config.vm.provision "chef_zero" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.nodes_path = "nodes"
    chef.add_recipe "jenkins-setup"
    chef.add_recipe "hellochef_service"
  end

end
