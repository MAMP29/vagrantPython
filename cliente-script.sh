#!/usr/bin/env bash

apt-get update
apt-get install -y python3-pip

APP="cliente.py"

sudo cp /vagrant/${APP} /home/vagrant/
sudo chmod +x /home/vagrant/${APP}
sudo chown vagrant:vagrant /home/vagrant/${APP}