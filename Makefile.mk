# This is the default target
all: install_conda

install_conda:
	# Download and install Miniconda, a lightweight version of Anaconda
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
	# Add Miniconda to the PATH
	echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
	source ~/.bashrc
