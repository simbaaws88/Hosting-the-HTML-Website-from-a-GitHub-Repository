# Hosting an HTML Website on an EC2 Instance Using GitHub

## Overview

This project demonstrates how to host an HTML website on an AWS EC2 instance using files stored in a GitHub repository. The website files are automatically downloaded, extracted, and configured on the EC2 instance using a bash script. The script ensures that the Apache web server is installed and running, and that the website is properly deployed.

## Task: Hosting from a GitHub Repository

### Description

The website files are stored in a GitHub repository. A bash script is used to download these files directly from GitHub, extract them, and set up the website on an EC2 instance running an Apache web server.

### Script

```bash
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
```

### Steps

1. **Update Packages**: The script begins by updating all packages on the EC2 instance to ensure they are up-to-date.
2. **Install Apache, Wget, and Unzip**: The script installs the Apache web server (`httpd`), `wget` for downloading files, and `unzip` for extracting the downloaded files.
3. **Download Website Files**: The script downloads the `master.zip` file containing the website files from the specified GitHub repository.
4. **Extract and Deploy**: The script extracts the files from the zip archive and copies them to the appropriate directory.
5. **Start Apache Server**: The script enables the Apache service to start on boot and starts the service.

### Result

The website is successfully hosted on the EC2 instance using files from the GitHub repository.

## Conclusion

This task successfully demonstrates how to automate the deployment of a website on an AWS EC2 instance using a bash script and a GitHub repository. The script handles the entire process, from downloading the files from GitHub to configuring the web server and hosting the website.
---
