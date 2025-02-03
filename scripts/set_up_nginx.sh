#!/bin/bash

# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a web root directory if it doesn't exist
sudo mkdir -p /var/www/html

# Set the correct permissions
sudo chown -R www-data:www-data /var/www/html

# Restart Nginx to apply changes
sudo systemctl restart nginx
