#!/bin/bash

sudo apt update -y
sudo apt install apache2 -y
echo "Hello, World!" > /var/www/html/index.html
sudo systemctl start apache2
sudo systemctl enable apache2