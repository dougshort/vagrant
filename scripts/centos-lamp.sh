#!/bin/bash

# Update Centos with any patches
yum update -y --exclude=kernel

# Tools Installation
yum install -y vim git unzip screen

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

# MySQL
yum install -y mysql mysql-server mysql-devel
systemctl daemon-reload
systemctl start mysql

# Confirm MySQL is running
mysql -u root -e "SHOW DATABASES";

# Download Starter Content

systemctl restart httpd
