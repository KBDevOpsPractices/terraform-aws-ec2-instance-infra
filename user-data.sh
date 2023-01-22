#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
echo "Hi Apps is working fine.." >/var/www/html/index.nginx-debian.html