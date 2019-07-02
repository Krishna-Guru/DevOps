
Note-

1) This task was executed in Windows 10 Education. Hence this installation procedure is written for Windows OS.
2) This task has been automated by implementing all the necessary instructions in vagrant file and hence running vagrant would set up an virtual machine that acts as ansible host and also will deploy petclinic.jar on ansible host
3) If you encounter any errors during the automated execution, please report as issues.

Following software are needed in windows for execution of this assignment
a) Vagrant
b) Virtualbox - Version - 6.0.8

Instructions to perform the experiment -

1) if virtual box is not installed in the system, click on this link https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe
2) Once the Virtualbox is downloaded, double click the installed file to begin the installation, follow the onscreen instructions and complete the installation
3) Now download vagrant by clicking on the following link https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
4) Once the vagrant is downloaded, follow the onscreen instructions to complete the installation
5) Open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
6) observe that in the downloaded contents there would be one more folder named "revised vagrant for jenkins build server".
7) Open command prompt and navigate to location where kguru_Assignment5 is present and type "vagrant up", this will setup a virtual machine that acts as an ansible host
8) once step 7 is complete, Now in command prompt navigate to the location where "revised vagrant for jenkins build server" is present and type "vagrant up", this will setup a virtual machine that acts as jenkins server, installs ansible on the jenkins server and also deploys the petclinic.jar file on the ansible host
9) wait for a while until the commands finish executing. Once all the commands get executed you can see the screen displaying a message that says "Transfering petclinic.jar - ok" and "Deploying petclinic.jar on host"
8) Once the above message is displayed, wait for a minute and then open the web-browser in the host system and type 192.168.33.10:8080, this will display the home page of pet clinic application


References -

Ansible documentation - https://docs.ansible.com/
