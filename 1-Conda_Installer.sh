#!/bin/bash

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3.8

# pip install
apt install -y python3-pip

#Install Make
apt install -y make

curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

chmod +x Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh

echo 'export PATH="/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
