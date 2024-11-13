#!/bin/bash
# Update package lists and install Nginx
sudo apt update
sudo apt install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Set the HOSTNAME variable and create an HTML file
HOSTNAME=$(hostname)
sudo bash -c "echo \"<html><body><h1>Welcome to $HOSTNAME!</h1></body></html>\" > /var/www/html/index.html"
