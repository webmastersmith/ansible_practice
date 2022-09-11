#!/usr/bin/bash
# run as root
apt-get update
apt-get install nginx -y
echo "<h1>Great job Bryon!</h1>" | tee /var/www/html/index.html
service nginx restart
service nginx enable
