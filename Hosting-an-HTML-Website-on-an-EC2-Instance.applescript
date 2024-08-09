#!/bin/bash
sudo su
yum update -y
yum install -y httpd wget unzip
cd /var/www/html
wget https://github.com/simbaaws88/Hosting-the-HTML-Website-from-a-GitHub-Repository/archive/refs/heads/master.zip -O mole.zip
unzip mole.zip
cp -R Hosting-the-HTML-Website-from-a-GitHub-Repository-main/. /var/www/html
systemctl enable httpd
systemctl start httpd