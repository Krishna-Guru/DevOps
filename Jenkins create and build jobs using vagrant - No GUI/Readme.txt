
Note-

1) This Assignment was executed in Windows 10 Education. Hence this installation procedure is written for Windows OS.
2) This Assignment has been automated by implementing all the necessary instructions in vagrant file and hence running vagrant would install all the required software and run sonar analysis on petclinic, build jar and launch it.
3) If you encounter any errors during the automated execution, please follow the manual instructions.

Following software are needed in windows for execution of this assignment
a) Vagrant
b) Virtualbox - Version - 6.0.8

Instructions to perform the experiment -

1) if virtual box is not installed in the system, click on this link https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe
2) Once the Virtualbox is downloaded, double click the installed file to begin the installation, follow the onscreen instructions and complete the installation
3) Now download vagrant by clicking on the following link https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
4) Once the vagrant is downloaded, follow the onscreen instructions to complete the installation
5) Open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
6) Now open the command prompt from the folder where the vagrantfile (that came along with downloaded package) is present and in the command prompt type the command 'vagrant up', this will install java, sonarqube and jenkins and also configure jenkins so that sonarqube analysis is performed and also petclinic jar is built and run on port 8081
7) Once the vagrant has finished the installation you can see a message that says "Build success" in your command prompt
8) Once the above message is displayed, open the web-browser in the host system and type 192.168.33.10:8081, this will display the home page of pet clinic application
9) Now, in order to simultaneously run another application in port 8081, open the command prompt from the folder where the vagrantfile (that came along with downloaded package) is present and in the command prompt type the command 'vagrant ssh ubuntu-vm'
10) In new browser tab, type the link as 192.168.33.10:9000, this will show the sonarqube analysis results performed on the petclinic application
11) You can also find the petclinic jar file has been stored in the same folder in which your vagrant file is present


References -

Jenkins CLI -Jenkins wiki
