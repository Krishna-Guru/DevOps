vagrant up
scp shell.sh vagrant@192.168.33.10:~/
ssh vagrant@192.168.33.10 chmod 644 shell.sh
vagrant ssh ubuntu-vm
