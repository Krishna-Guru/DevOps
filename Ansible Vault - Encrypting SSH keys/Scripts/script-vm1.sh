#!/bin/sh
sudo apt-get update
sudo apt-get -y install expect
git clone https://github.com/spring-projects/spring-petclinic.git
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get -y install openjdk-8-jdk
sudo apt-get -y install maven
cd spring-petclinic
./mvnw package
cd target
sudo mv spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /tmp
sudo mv /tmp/ssh_config /etc/ssh
sudo cp /vagrant/Configurationfiles/playbook.yml ~/.ssh/
sudo service ssh restart
sudo apt-get -y install python
sudo apt-get update
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y install ansible
sudo apt -y install sshpass
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
sudo su
cd /etc/ansible
echo '192.168.33.20 ansible_ssh_pass=vagrant ansible_ssh_user=vagrant' >> hosts
cd ~
cd .ssh
cp /vagrant/Scripts/expect.sh ~/.ssh
expect ./expect.sh