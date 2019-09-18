#!/usr/bin/expect -f

spawn ansible-vault encrypt id_rsa.pub
expect "New Vault password: "
send -- "root\r"
expect "Confirm New Vault password: "
send -- "root\r"
spawn ansible-playbook playbook.yml --ask-vault-pass
expect "Vault password: "
send -- "root\r"
expect eof 
sleep 120