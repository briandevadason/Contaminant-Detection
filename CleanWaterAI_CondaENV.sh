#!/bin/bash

# Update conda
conda update -n base -c defaults conda

# Create a new conda environment
conda create -n CleanWaterAI python=3.8

# Installing Tensorflow
conda install -n env_name -c conda-forge tensorflow

# Activate the environment
conda activate env_name

# Install the CUDA toolkit
conda install -c anaconda cudatoolkit

# Test the CUDA toolkit
cd /usr/local/cuda/samples/<sample_directory>
make
./<sample_executable>
