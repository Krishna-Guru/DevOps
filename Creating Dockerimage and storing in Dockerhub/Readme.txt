
Note-

1) This Assignment was executed in Windows 10 Education. Hence this installation procedure is written for Windows OS.
2) This Assignment has been automated by implementing all the necessary instructions in vagrant file and hence running vagrant would install all the required software and create container image and also run it.
3) If you encounter any errors during the automated execution, please follow the manual instructions.
4) IP Address of both containers are present in one of the screenshots, they are 172.17.0.2 and 172.17.0.3


Following software are needed in windows for execution of this assignment
a) Vagrant
b) Virtualbox - Version - 6.0.8

Instructions to perform the experiment -

1) if virtual box is not installed in the system, click on this link https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe
2) Once the Virtualbox is downloaded, double click the installed file to begin the installation, follow the onscreen instructions and complete the installation
3) Now download vagrant by clicking on the following link https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi
4) Once the vagrant is downloaded, follow the onscreen instructions to complete the installation
5) Open the cmd prompt and type 'vagrant -v'(ignore the single quotes). If version of vagrant is displayed, this means that the vagrant was installed successfully.
6) Now open the command prompt from the folder where the vagrantfile (that came along with downloaded package) is present and in the command prompt type the command 'vagrant up', this will install ubuntu with docker, clone petclinic, create a image and also run the image , This may take a while. (10 minutes approx)
7) Once the vagrant has finished the installation you can see a message that says "Started PetClinicApplication in 9.863 seconds (JVM running for 10.5)"
8) Once the above message is displayed, open the web-browser in the host system and type 192.168.33.10:8080, this will display the home page of pet clinic application
9) Now, in order to simultaneously run another application in port 8081, open the command prompt from the folder where the vagrantfile (that came along with downloaded package) is present and in the command prompt type the command 'vagrant ssh ubuntu-vm'
10) This will ssh into the guest vm, once inside, type the following command "sudo docker run -p 8081:8080 docker-spring-boot", this will start another instance of petclinic in port 8081.
11) Again go the browser in the host machine and type the address "192.168.33.10:8081", this will display the homepage of petclinic.
12) You can thus observe, two applications are running in two containers simultaneously.

Instructions to push the image into Dockerhub -

1) In order to push the image into dockerhub, you need to have an account with dockerhub. If you dont have an account , visit https://hub.docker.com/ and click on  signup for Dockerhub and follow the instructions
2) Once the the docker hub account has been created, ssh into the vm from vagrant (step 9 in Instructions to perform experiment).
3) type "docker login --username=<yourhubusername>" , eg -"docker login --username=krishnaguru", this will prompt for password, enter the password
4) you will see a message that says login successful.
5) now type docker images, this will list the images present
6) copy the tag of the image that you want to push to hub
7) type the command docker tag "<copied tag id>" yourhubusername/<docker image name>:firsttry
8) Following this type docker push yourhubusername/<docker image name>
9) Your image will be uploaded to hub, you can login in to hub to verify that it was successfully uploaded to hub.



References -

Hashicorp-Vagrant Documentation
