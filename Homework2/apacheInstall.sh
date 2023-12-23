#!/bin/bash

# get admin privileges
sudo su

# install httpd 
yum update -y
yum install -y httpd 
systemctl start httpd.service
systemctl enable httpd.service
echo "<h1> You are on the right track! </h1>" > /var/www/html/index.html