#!/bin/bash

# Set timezone to Asia/Jakarta
sudo timedatectl set-timezone Asia/Jakarta

# Update & upgrade system packages
sudo apt update
sudo apt upgrade -y

# Install required packages
sudo apt install -y git curl zip python3 python3-pip

# Install Docker
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Display Docker version
docker --version

# Display installed package versions
echo "Git Version: $(git --version)"
echo "Curl Version: $(curl --version | head -n 1)"
echo "ZIP Version: $(zip --version | head -n 1)"
echo "Python3 Version: $(python3 --version)"
echo "PIP3 Version: $(pip3 --version)"
