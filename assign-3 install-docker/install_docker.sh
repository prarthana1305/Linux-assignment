#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update -y

# Install prerequisite packages
echo "Installing prerequisite packages..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
echo "Adding Docker's GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker's repository to sources list
echo "Adding Docker repository..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_relea>

# Update package list again to include Docker packages
echo "Updating package list with Docker packages..."
sudo apt update -y

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Verify installation
echo "Verifying Docker installation..."
docker_version=$(docker --version 2>/dev/null)

if [ -z "$docker_version" ]; then
  echo "Docker installation failed."
else
  echo "Docker installed successfully: $docker_version"
