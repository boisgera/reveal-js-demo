#!/bin/bash

MINICONDA_INSTALLER=https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

curl $MINICONDA_INSTALLER > miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
conda install --yes -c conda-forge pandoc=1.19.2
pandoc --version

