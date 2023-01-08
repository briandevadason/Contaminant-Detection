#!/bin/bash

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3.8

#Install Make
apt install -y make

# Clone the conda repository
git clone https://github.com/conda/conda.git

# Change to the conda directory
cd conda

# Run the install script
bash install.sh
