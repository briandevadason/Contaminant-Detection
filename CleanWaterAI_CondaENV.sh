#!/bin/bash

# Download the Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Run the Miniconda installer
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda

# Add Miniconda to the PATH
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Update conda
conda update -n base -c defaults conda

# Create a new conda environment
conda create -n CleanWaterAI python=3.8

# Installing Tensorflow
conda install -n CleanWaterAI -c conda-forge tensorflow

# Activate the environment
conda activate CleanWaterAI

# Install the CUDA toolkit
conda install -c anaconda cudatoolkit

# Test the CUDA toolkit
cd /usr/local/cuda/samples/<sample_directory>
make
./<sample_executable>
