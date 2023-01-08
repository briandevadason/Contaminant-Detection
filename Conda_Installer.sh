#!/bin/bash

# Download Python 3.8
wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tar.xz

# Extract the tarball
tar xvf Python-3.8.5.tar.xz

# Change to the Python 3.8 directory
cd Python-3.8.5

# Configure, build, and install Python
./configure --prefix=/usr/local && make && make install

# Download the Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Run the Miniconda installer
bash Miniconda3-latest-Linux-x86_64.sh

# Add Miniconda to the PATH
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
