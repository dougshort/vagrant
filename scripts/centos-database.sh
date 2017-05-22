#!/bin/bash

# MySQL
yum install -y mysql mysql-server mysql-devel mariadb-server
systemctl daemon-reload
systemctl start mariadb

# Confirm MySQL is running
mysql -u root -e "SHOW DATABASES";