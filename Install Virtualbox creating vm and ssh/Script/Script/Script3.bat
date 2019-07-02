cd\
c:
cd "Program Files\Oracle\VirtualBox"
VboxManage.exe createvm --name "ubuntu-1" --register
VboxManage.exe modifyvm "ubuntu-1" --memory 1024 --acpi on --boot1 dvd --cpus 2
VboxManage.exe modifyvm "ubuntu-1" --nic1 nat
VboxManage.exe modifyvm "ubuntu-1" --nic2 hostonly --hostonlyadapter2 "VirtualBox Host-Only Ethernet Adapter"
VboxManage.exe modifyvm "ubuntu-1" --nicpromisc2 allow-all
VboxManage.exe modifyvm "ubuntu-1" --ostype Ubuntu_64
VboxManage.exe storagectl "ubuntu-1" --name "IDE Controller" --add ide
VboxManage.exe storagectl "ubuntu-1" --add sata --controller IntelAHCI --name "SATA Controller"
VboxManage.exe createhd --filename C:\VirtualBox\ubuntu-1.vdi --size 10240 --format VDI
VboxManage.exe storageattach "ubuntu-1" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium C:\VirtualBox\ubuntu-1.vdi
VBoxManage.exe unattended install "ubuntu-1" --iso="C:\VirtualBox\ubuntu-19.04-desktop-amd64.iso" --user=devops --password=DevopsA1 --full-user-name="devops assignment"
VBoxManage.exe startvm "ubuntu-1"
PAUSE
VboxManage clonevm ubuntu-1 --name ubuntu-2 --register
VBoxManage.exe startvm "ubuntu-2"
