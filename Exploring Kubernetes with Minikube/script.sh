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

echo "==== PetClinic is up on http://192.168.33.10:30080 and on http://192.168.33.10:30081 ===="
