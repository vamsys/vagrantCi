# Vagrant VM for Jenkins
This project creates a Vagrant VM with Jenkins server running on

> Ubuntu 16.04.5 LTS \
> Java 1.8.0_201 

Chef is used for configuration management.
Setup explained below relates to MacOS.
Requires internet connectivity to download artifacts from chef supermarket, oracle and jenkins repos.

### Requirements

It is assumed you have Virtual Box and Vagrant installed. If not, then grab the latest version of each at the links below:
* [Virtual Box and Virtual Box Guest Additions](https://www.virtualbox.org/wiki/Downloads) - Version 5.2.24
* [Vagrant](https://www.vagrantup.com/downloads.html) - Version 2.2.3

ChefDK is required to be installed on the host machine.
* [ChefDK](https://downloads.chef.io/chefdk/stable/2.5.3#mac_os_x) - Version 2.5.3

### Vagrant Plugins

Once Vagrant is installed, or if it already is, install the following Vagrant plugins:

* [vagrant-hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater)
```$ vagrant plugin install vagrant-hostsupdater```
* [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)
```$ vagrant plugin install vagrant-vbguest```
* [vagrant-berkshelf](https://github.com/berkshelf/vagrant-berkshelf)
```$ vagrant plugin install vagrant-vbguest```

### Installation

In the terminal, 

* Check Virtualbox version: 
```$ vboxmanage --version```

* Check Vagrant version: 
```$ vagrant -v```

* Check ChefDK version:
```$ chef -v```

* Clone the repository:
```$ git clone https://github.com/vamsys/vagrantCi```

* Navigate into the repository:
```$ cd vagrantCi ```

* Check vagrantfile has below properties, if not add them. \
``` config.vm.box = "ubuntu/trusty64" ```\
``` config.vm.network "private_network", ip: "192.168.33.10" ```
```$ vb.memory is set to 4096``` : Change according to your host system

* Run vagrant command:
```$ vagrant up``` and wait for vagrant and chef run to finish.

> Once finished, navigate to url below to verify jenkins is up and running: \
http://192.168.33.10:8080

* To verify inside the VM: \
```$ vagrant ssh``` : to login into VM \
```$ ps -ef | grep jenkins``` : to verify jenkins process is running

### Folder Setup
- `vagrantCi/` : Contents of the repo
    - `Vagrantfile` : VM config and setup
    - `Berksfile`   : Source for berkshelf
    - `cookbooks`   : Chef cookbooks for config management
    - `nodes`       : node json files

### References
* Community cookbooks Java & Jenkins are used for installation. Thanks to the providers.







