#!/bin/bash

# Install conda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# Create a new conda environment and install TensorFlow
conda create --name tensorflow python=3.8
conda activate tensorflow
conda install tensorflow
