#!/bin/bash

# Update the package list
apt update

# Install Python 3.8 without user interaction
apt install -y python3.8

# Download the Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Run the Miniconda installer
bash Miniconda3-latest-Linux-x86_64.sh

# Add Miniconda to the PATH
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
