#!/bin/bash

echo "Installing miniconda"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /home/hadoop/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p $HOME/miniconda

echo -e '\nexport PATH=$HOME/miniconda/bin:$PATH' >> $HOME/.bashrc && source $HOME/.bashrc
rm ~/miniconda.sh

conda init bash

sudo yum install -y tmux
sudo yum install -y git

echo "Installing python dependencies"
conda activate 
pip install git+https://github.com/DEIB-GECO/PyGMQL
conda install -y matplotlib
conda install -y seaborn
conda install -y pandas
conda install -y scipy
conda install -y numpy