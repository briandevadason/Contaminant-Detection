#!/bin/bash

touch ~/.bash_profile

# Update the package list
apt update

# Upgrade installed packages
apt upgrade -y

# Install Python 3.8 without user interaction
apt install -y python3

#Anaconda prerequsites
apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

# pip install
apt install -y python3-pip

#Install Make
apt install -y make

apt install -y curl

curl -O https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh

chmod +x Anaconda3-2022.10-Linux-x86_64.sh

bash Anaconda3-2022.10-Linux-x86_64.sh -b

echo 'export PATH="/home/ubuntu/anaconda3/bin/conda"' >> ~/.bashrc
source ~/.bashrc


#echo 'export PATH="/miniconda3/bin:$PATH"' >> ~/.bashrc
#source ~/.bashrc
