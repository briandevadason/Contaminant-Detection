#!/bin/bash

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3.8

#Install Make
apt install -y make

#Miniconda download
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_22.11.1-1-Linux-x86_64.sh

# Make the Miniconda installer executable
chmod +x Miniconda3-py38_22.11.1-1-Linux-x86_64.sh

# Run the Miniconda installer
./Miniconda3-py38_22.11.1-1-Linux-x86_64.sh -b -p $HOME/miniconda

# Add Miniconda to the PATH
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
