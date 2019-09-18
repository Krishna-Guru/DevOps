#!/bin/sh

sudo mv /tmp/sshd_config /etc/ssh
sudo service ssh restart
sudo apt-get -y install python
sudo apt-get update
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk