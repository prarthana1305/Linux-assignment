#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update -y

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt install -y mysql-server

# Enable and start MySQL service
echo "Enabling and starting MySQL service..."
sudo systemctl enable mysql
sudo systemctl start mysql

# Check MySQL status
echo "Checking MySQL service status..."
sudo systemctl status mysql --no-pager

# Verify MySQL installation
mysql_version=$(mysql --version 2>/dev/null)

if [ -z "$mysql_version" ]; then
  echo "MySQL installation failed."
else
  echo "MySQL installed successfully: $mysql_version"
fi
