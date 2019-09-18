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
Using Nagios to monitor Virtual machine host
======================================================
1) please make sure that the file structure is same as displayed in screenshot "ExpectedFileStructure"
2) open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
3) Open the folder named "configuration files" and open the file named "contacts.cfg" and enter the email id to which mail has to be sent agaist the email field
4) Now open "ssmtp.conf" and enter the mailid from which mail has to be sent and also its password against the respective fields, save the file and exit
5) open command prompt and navigate to location where kguru_Assignment8 is present and type "vagrant up", doing this will
    a) create and configure 2 unbuntu 16.04 vm with name as ubuntu-vm (Server) and ubuntu-vm2 (Host) and private ip address as 192.168.1.9 and 192.168.1.10
    b) copy the configuration files from the folder to vm in virtualbox
    c) install apache2, php, mysql required to install nagios
    d) install  nagios, which will monitor the hosts
    e) install ssmtp inorder to trigger mails when host is down
6) wait until the commands are successfully executed
7) once done, open the web browser of your choice and navigate to 192.168.1.9/nagios, enter "nagiosadmin" as username and leave the password field blank and press enter
====================================================
References
====================================================
1) https://www.howtoforge.com/tutorial/ubuntu-nagios/
2) http://www.havetheknowhow.com/Configure-the-server/Install-ssmtp.html
3) https://support.nagios.com/

======================================================
compiled by Krishna Guru
======================================================