#!/bin/bash
# package updates
yum check-update
yum update 
# apache installation, enabling and status check
yum -y install httpd
systemctl start httpd
systemctl enable httpd
# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Apache Web Server launched on CLI</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Week 6 Project</h1>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html