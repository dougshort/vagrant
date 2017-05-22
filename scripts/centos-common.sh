#!/bin/bash

# Update Centos with any patches
yum update -y --exclude=kernel

# Tools Installation
yum install -y vim git unzip screen nc telnet