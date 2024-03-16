# -*- mode: ruby -*-
# vi: set ft=ruby :
#
BOX_BASE = "ubuntu/focal64"
RAM = "512"
CPUS = "1"
SERVIDOR = "servidor"
CLIENTE = "cliente"

Vagrant.configure("2") do |config|
  config.vm.box = BOX_BASE
  config.vm.define SERVIDOR do |servidor|
    servidor.vm.hostname = SERVIDOR
    servidor.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', RAM ]
        vb.customize [ 'modifyvm', :id, '--cpus', CPUS ]
        vb.customize [ 'modifyvm', :id, '--name', SERVIDOR ]
    end
    servidor.vm.provision "shell", path: "servidor-script.sh"
    servidor.vm.network "private_network", ip: "192.168.56.50"
    servidor.vm.network "forwarded_port", guest: 5000, host: 5000
  end
  
  config.vm.define CLIENTE do |cliente|
    cliente.vm.hostname = CLIENTE
    cliente.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', RAM ]
        vb.customize [ 'modifyvm', :id, '--cpus', CPUS ]
        vb.customize [ 'modifyvm', :id, '--name', CLIENTE ]
    end 
    cliente.vm.provision "shell", path: "cliente-script.sh"
    cliente.vm.network "private_network", ip: "192.168.56.100"
  end
end
