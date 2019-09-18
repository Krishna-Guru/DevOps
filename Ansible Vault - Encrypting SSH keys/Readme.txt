======================================================
Note 
======================================================
1) This Assignment was executed in Windows 10 Education. Hence this installation procedure is written for Windows OS.
2) This Assignment has been automated by implementing all the necessary instructions in vagrant file and hence running vagrant up would set up an virtual machine and exercise the use of ansible vault on ssh keys
3) Following software are needed in windows for execution of this assignment
    a) Vagrant
    b) Virtualbox - Version - 6.0.8

======================================================
Installing Virtualbox 
======================================================
1) if Virtualbox - Version - 6.0.8 is already installed you may ignore this set of instructions
2) if virtual box is not installed in the system, navigate to this link https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe
3) this will begin the downloading of virtual box
4) Once the Virtualbox is downloaded, double click the installed file to begin the installation, follow the onscreen instructions and complete the installation 

======================================================
Installing Vagrant
======================================================
1) if vagrant is already installed in the system, you may ignore this set of instructions
2) if vagrant is not installed download vagrant by navigating to the following link https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
3) this will begin the downloading of vagrant
4) Once the vagrant is downloaded, follow the onscreen instructions to complete the installation

======================================================
Enctypting SSH key using ansible vault ans storing it
======================================================
1) please make sure that the file structure is same as displayed in screenshot "expected file structure"
2) open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
3) open command prompt and navigate to location where kguru_Assignment7 is present and type "vagrant up", doing this will
    a) create and configure 2 unbuntu 16.04 vm with name as ubuntu-vm and ubuntu-vm2 and private ip address as 192.168.33.10 and 192.168.33.20
    b) copy the deployment instructions in the yaml files to vm in the virtualbox
    c) install ansible which will help in deploying the app on a host
    d) install ansible vault which will encrypt the ssh key and store it
    e) install latest java and python for deploying the applictaion 
    f) Build petclinic jar so that ansible can deploy it on the host
4) wait until the commands are successfully executed
5) once done, open the web browser of your choice and navigate to 192.168.33.20:8080 to view the petclinic application runnning

====================================================
References
====================================================
1) https://www.vagrantup.com/docs
2) https://github.com/spring-projects/spring-petclinic
3) Ansible documentation

======================================================
compiled by Krishna Guru
======================================================