# Contaminant-Detection
This repo contains my work on gettin contaminant detection working on microcontrollers using TinyML. 

Setup Instuctions: 

Prerequsites: 

- Pip

- Tensorflow
	pip install --upgrade pip
	pip install tensorflow

Setup Workspace:

$ mkdir workspace
$ cd workspace
$ git clone https://github.com/tensorflow/models.git

Install Dependencies: 

sudo python3 -m pip install --upgrade pip
sudo pip3 install pillow lxml Cython contextlib2 jupyter matplotlib pandas pycocotools absl-py 
sudo apt-get install python-opencv

Setup Python Enviornment Variable:

$ export 

PYTHONPATH=$PYTHONPATH:~/ContaminantDetection/workspace/models:~/ContaminantDetection/workspace/models/research:~/ContaminantDetection/workspace/models/research/slim
$ export PATH=$PATH:PYTHONPATH
$ cd ~/ContaminantDetection/workspace/models/research/slim
$ python setup.py build
$ sudo python setup.py install
