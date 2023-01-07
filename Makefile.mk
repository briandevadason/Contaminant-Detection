install:
    # Download Python 3.8 source code
    wget https://www.python.org/ftp/python/3.8.6/Python-3.8.6.tgz

    # Extract tarball
    tar xvf Python-3.8.6.tgz

    # Navigate to extracted directory
    cd Python-3.8.6

    # Run configure script
    ./configure --enable-optimizations

    # Compile and install Python
    make -j8
    sudo make altinstall

    # Add conda to PATH
    echo 'export PATH="/opt/conda/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc

    # Update conda and install packages
    conda update -n base -c defaults conda
    conda install numpy scipy pandas
