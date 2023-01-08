#!/bin/bash

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3.8

# Download the Anaconda installer
wget https://repo.anaconda.com/archive/Anaconda3-2021.02-Linux-x86_64.sh

# Run the Anaconda installer
bash Anaconda3-2021.02-Linux-x86_64.sh -b -p $HOME/anaconda

# Add Anaconda to the PATH
echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
