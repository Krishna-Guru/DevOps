md -Name VirtualBox -Path 'C:\'
Start-BitsTransfer -Source  'https://download.virtualbox.org/virtualbox/6.0.8/VirtualBox-6.0.8-130520-Win.exe' -Destination 'C:\VirtualBox'
Start-Process 'C:\VirtualBox\VirtualBox-6.0.8-130520-Win.exe'
md -Name Vagrant -Path 'C:\'
Start-BitsTransfer -Source 'https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.msi' -Destination 'C:\Vagrant'
Start-Process 'C:\Vagrant\vagrant_2.2.4_x86_64.msi'
cd 'C:\Vagrant'
