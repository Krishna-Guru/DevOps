

Note -

? This method works only in Windows platform with powershell installed 
? Prior to performing these steps, it is assumed that the virtualbox is not currently installed in the system
? It is required that the system in which these scripts are being executed, has a steady internet connection
? For this exciting task, we use ubuntu - 19.04 Desktop amd 64 bit version as os and Virtualbox Version 6.08 (The download and installing of the software and setting up virtual machines and configuring them has been automated)
? If there are conflicts/problems while installing through this method, please switch to manual mode of download and install
	

Steps to achieve the goal - 

1. Extract the Zip file titled Script.zip to any folder
2. The extracted file will contain three batch files titled Script 1, Script 2 and Script 3
3. First double click on the Script1.bat to execute it.	
a. This script takes care of downloading the required version of Virtualbox
4. A screen indicating the progress of download will pop up.
5. Once the download is complete, the installation of wizard of VirtualBox will open, please proceed with all the default options. In the final screen of installation window, check the box to launch the application and click the finish button.
6. Now, double click on the Script2.bat to execute it.
a. This script takes care of downloading the required version of OS (Ubuntu 19.04)
7. A screen indicating the download will pop up.
8. Once the download is complete, press any key to finish the process
9. Now double click on Script3.bat to execute it.
a. This script will create a new virtual machine and cloned virtual machine in the Virtual box.
b. The virtual machines have been configured to use two Network adapters, one NAT - for internet connection and one Hostonly adapter for connection between VMs. The reason for preferring Hostonly over Bridged adapter is that Hostonly adapter can be more secure as it is involved with connection between VMs alone unlike Bridged adapter, which also connects to internet, thus making it potentially vulnerable
c. The script will also automatically install the os in the virtual machine, without the need of any manual input
10. Once the installation of OS is complete, press any key to continue in the command window, this will create the clone of virtual machine 1 and launch it.
11. Once both the virtual machines are launched log in by selecting the user as “devops assignment” and the password is DevopsA1
12. After logging in, click the menu icon in the bottom left corner of the screen.
13. In the search bar of menu, type terminal and double click on the search result
14. In the terminal type su - , it will prompt for password,enter the password as DevopsA1. This is done to gain root access to the systems
15. Now in the terminal, type apt get-update, this will update the system
16. Now in the terminal, type apt install net-tools, once it is done, type ifconfig this will help us in viewing the ip address of the system to Ping the other vm
17. In the terminal, type ping google.com this will convey whether internet connection has been established.
18. Press ctrl+c to exit the pinging of google.com
19. Now type ifconfig in the terminals of both VM to check their IP address and make a note of them. (the IP address will be 192.169.56.xxx)
20. Now from terminal of one VM, type ping <ip address of other machine>, this will make the VM ping each other
21. Press ctrl+c to exit the pinging.
22. In the terminal type apt-get install openssh-server, this will start installation of ssh , when prompt for using addition space shows up, type Y and press enter
23. Now, if we try to ssh to other VM it will prompt for password
24. In the terminal type ssh-keygen, this will prompt to enter a file to save the key, just press enter without giving any input, after this it will ask for passphrase, again press enter without giving any input, again press enter without giving any input, akey will be saved.
25. Now in the terminal use the command ssh-copy-id -i ~/.ssh/id_rsa.pub devops@192.168.56.104,  this is done in order to install the public key in the remote server.
26. Once this is done, finally enter the ssh hostname@ipaddress, you must be able to login without any password. 


References -

1. Oracle VM Virtualbox user manual
2. Shell Hacks - Linux Hacks and guides blog
3. Youtube.com - Virtualbox unattended install



