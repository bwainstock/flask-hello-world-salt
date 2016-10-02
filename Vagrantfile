# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
  end
  config.vm.define :master do |master_config|
    master_config.vm.box = "bento/centos-7.2"
    master_config.vm.host_name = 'saltmaster.local'
    master_config.vm.network "private_network", ip: "192.168.50.10"
    master_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
    master_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "saltstack/etc/master"

      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = true
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

  config.vm.define :web1 do |minion_config|
    minion_config.vm.box = "bento/centos-7.2"
    minion_config.vm.host_name = 'web1.local'
    minion_config.vm.network "private_network", ip: "192.168.50.11"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "saltstack/etc/web1"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

  config.vm.define :web2 do |minion_config|
    minion_config.vm.box = "bento/centos-7.2"
    # The following line can be uncommented to use Centos
    # instead of Ubuntu.
    # Comment out the above line as well
    #minion_config.vm.box = "bento/centos-7.2"
    minion_config.vm.host_name = 'web2.local'
    minion_config.vm.network "private_network", ip: "192.168.50.12"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "saltstack/etc/web2"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end
 
  config.vm.define :web3 do |minion_config|
    minion_config.vm.box = "bento/centos-7.2"
    # The following line can be uncommented to use Centos
    # instead of Ubuntu.
    # Comment out the above line as well
    #minion_config.vm.box = "bento/centos-7.2"
    minion_config.vm.host_name = 'web3.local'
    minion_config.vm.network "private_network", ip: "192.168.50.13"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "saltstack/etc/web3"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end
 
  config.vm.define :web4 do |minion_config|
    minion_config.vm.box = "bento/centos-7.2"
    # The following line can be uncommented to use Centos
    # instead of Ubuntu.
    # Comment out the above line as well
    #minion_config.vm.box = "bento/centos-7.2"
    minion_config.vm.host_name = 'web4.local'
    minion_config.vm.network "private_network", ip: "192.168.50.15"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "saltstack/etc/web4"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

  config.vm.define :haproxy do |minion_config|
    minion_config.vm.box = "bento/centos-7.2"
    # The following line can be uncommented to use Centos
    # instead of Ubuntu.
    # Comment out the above line as well
    #minion_config.vm.box = "bento/centos-7.2"
    minion_config.vm.host_name = 'haproxy.local'
    minion_config.vm.network "private_network", ip: "192.168.50.14"

    minion_config.vm.provision :salt do |salt|
      salt.minion_config = "saltstack/etc/haproxy"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end
end
