#!/bin/sh

## installing kubectl
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

## installing and starting minikube
sudo wget https://github.com/kubernetes/minikube/releases/download/v1.2.0/minikube_1.2.0.deb
sudo dpkg -i minikube_1.2.0.deb
curl -fsSL https://get.docker.com/ | sh
sudo minikube start --vm-driver=none
wait
cd /tmp/

## running the deployment script
sudo kubectl create -f deployment.yaml
sleep 60
sudo kubectl get pods -o wide
## listing the deployments
sudo kubectl get deployment
## listing the services
sudo kubectl get svc

##installing logstash
sudo apt install openjdk-8-jre-headless -y
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install logstash

##configuring Logstash
sudo mv /tmp/first-pipeline.conf /usr/share/logstash/bin/first-pipeline.conf
cd /var/log/containers
sudo find . -name '*petclinic-container2*' -exec bash -c 'mv $0 petclinic2.log' {} \;
sudo find . -name '*petclinic-container1*' -exec bash -c 'mv $0 petclinic.log' {} \;
sudo su
cd /usr/share/logstash/bin
./logstash -f first-pipeline.conf --config.test_and_exit
./logstash -f first-pipeline.conf --config.reload.automatic
