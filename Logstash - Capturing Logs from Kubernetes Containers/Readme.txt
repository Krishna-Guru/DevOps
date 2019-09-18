==============================================================
Note 
==============================================================
1) This Assignment was executed in Windows 10 Education. Hence this installation procedure is written for Windows OS.
2) This Assignment has been automated by implementing all the necessary instructions in vagrant file and hence running vagrant up would set up an virtual machine and deploy docker image into kubernetes , install logstash and convert captured data to csv and store it
3) Following software are needed in windows for execution of this assignment
    a) Vagrant
    b) Virtualbox - Version - 6.0.8

===============================================================
Installing Virtualbox 
===============================================================
1) if Virtualbox - Version - 6.0.8 is already installed you may ignore this set of instructions
2) if virtual box is not installed in the system, navigate to this link https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe
3) this will begin the downloading of virtual box
4) Once the Virtualbox is downloaded, double click the installed file to begin the installation, follow the onscreen instructions and complete the installation 

================================================================
Installing Vagrant
================================================================
1) if vagrant is already installed in the system, you may ignore this set of instructions
2) if vagrant is not installed download vagrant by navigating to the following link https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
3) this will begin the downloading of vagrant
4) Once the vagrant is downloaded, follow the onscreen instructions to complete the installation

=================================================================
Installing logstash to capture logs from petclinic-containers
=================================================================
1) please make sure that the file structure is same as displayed in screenshot "expected file structure"
2) open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
3) open command prompt and navigate to location where kguru_Assignment6 is present and type "vagrant up", doint this will
    a) create and configure a unbuntu 16.04 vm with name as kubernetes and private ip address as 192.168.33.10
    b) copy the deployment instructions in the yaml files to vm in the virtualbox
    c) install kubectl, which allows us to run commands against Kubernetes clusters
    d) install minikube, which is a tool that runs a single-node Kubernetes cluster on vm inside the vm of virtualbox
    e) run,expose and service the image from docker Hub
    f) display the deployments, services and the ip address of the containers (includes as images in "Screenshots" folder)
    g) install logstash, fetch data from petclinic containers, store output as csv
4) wait until the commands are successfully executed
5) once done, a file named "log.csv" will be created in the folder where vagrant file is located

==================================================================
References
==================================================================
1) https://www.elastic.co/products/logstash

======================================================
compiled by Krishna Guru
======================================================