# This is the default target
all: install_python install_conda

install_python:
	# Download and install Python 3.8
	wget https://www.python.org/ftp/python/3.8.5/Python-3.8.5.tar.xz
	tar xvf Python-3.8.5.tar.xz
	cd Python-3.8.5 && ./configure --prefix=/usr/local && make && make install

install_conda:
	# Download and install Miniconda, a lightweight version of Anaconda
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
	# Add Miniconda to the PATH
	echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
	source ~/.bashrc
