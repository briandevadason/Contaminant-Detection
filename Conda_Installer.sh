#!/bin/bash

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3.8

#Install Make
apt install -y make

#Run the make file to install Conda
git clone https://github.com/conda/conda.git

cd conda

sudo make install
