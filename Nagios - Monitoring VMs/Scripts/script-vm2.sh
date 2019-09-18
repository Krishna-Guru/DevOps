#!/bin/sh

sudo apt-get install -y nagios-nrpe-server nagios-plugins
cd /etc/nagios
echo 'server_address=192.168.1.9' >> nrpe.cfg
service nagios-nrpe-server restart
