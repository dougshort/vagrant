#!/bin/bash

# Apache Installation
yum install -y httpd httpd-devel httpd-tools
systemctl daemon-reload
systemctl stop httpd

# Remove default html directory
rm -rf /var/www/html

# Create symbolic link for shared folder
ln -s /vagrant /var/www/html

# Start Apache
systemctl start httpd

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/dougshort/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/dougshort/vagrant/master/files/info.php

systemctl restart httpd
