#!/bin/sh
sudo su
sudo apt-get update

# installing required dependencies

sudo apt-get install -y wget build-essential apache2 php apache2-mod-php7.0 php-gd libgd-dev sendmail unzip
useradd nagios
groupadd nagcmd
usermod -a -G nagcmd nagios
usermod -a -G nagios,nagcmd www-data
cd ~

#installing nagios

wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.2.0.tar.gz
tar -xzf nagios*.tar.gz
cd nagios-4.2.0
./configure --with-nagios-group=nagios --with-command-group=nagcmd
make all
sudo make install
sudo make install-commandmode
sudo make install-init
sudo make install-config
/usr/bin/install -c -m 644 sample-config/httpd.conf /etc/apache2/sites-available/nagios.conf
cp -R contrib/eventhandlers/ /usr/local/nagios/libexec/
chown -R nagios:nagios /usr/local/nagios/libexec/eventhandlers
cd ~
wget https://nagios-plugins.org/download/nagios-plugins-2.1.2.tar.gz
tar -xzf nagios-plugins*.tar.gz
cd nagios-plugins-2.1.2/
./configure --with-nagios-user=nagios --with-nagios-group=nagios --with-openssl
make
make install
cd /usr/local/nagios/etc/
echo 'cfg_dir=/usr/local/nagios/etc/servers' >> nagios.cfg
mkdir -p /usr/local/nagios/etc/servers

#configuring nagios files and restarting server

mv /tmp/contacts.cfg /usr/local/nagios/etc/objects/
sudo a2enmod rewrite
sudo a2enmod cgi
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo ln -s /etc/apache2/sites-available/nagios.conf /etc/apache2/sites-enabled/
service apache2 restart
cd /etc/init.d/
cp /etc/init.d/skeleton /etc/init.d/nagios
echo 'DESC="Nagios"
NAME=nagios
DAEMON=/usr/local/nagios/bin/$NAME
DAEMON_ARGS="-d /usr/local/nagios/etc/nagios.cfg"
PIDFILE=/usr/local/nagios/var/$NAME.lock' >> nagios
chmod +x /etc/init.d/nagios 
mv /tmp/ubuntu_host.cfg /usr/local/nagios/etc/servers
/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

#installing and configuring ssmtp

sudo apt-get update
sudo apt-get -y install ssmtp
mv /tmp/ssmtp.conf /etc/ssmtp/ssmtp.conf
mv /tmp/commands.cfg /usr/local/nagios/etc/objects/commands.cfg
sudo apt-get -y install mailutils
service apache2 restart
cd ~
/etc/init.d/nagios start



