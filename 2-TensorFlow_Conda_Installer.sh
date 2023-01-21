#!/bin/bash

# Update conda
conda update -n base -c defaults conda -q

# Create a new conda environment
conda create -n CleanWaterAI python=3.8

#activates the CleanWaterAI conda enviornment
conda activate CleanWaterAI

conda install -q -c conda-forge opencv

# Installing Tensorflow
conda install -q -n CleanWaterAI -c conda-forge tensorflow

# Install the CUDA toolkit
conda install -q -c anaconda cudatoolkit

# Test the CUDA toolkit
#cd /usr/local/cuda/samples/<sample_directory>
#make
#./<sample_executable>
