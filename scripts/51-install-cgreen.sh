#!/bin/bash

#############################################
# Configure and compile cgreen
#############################################
cd $HOME
if [ ! -d "$HOME/cgreen_code" ]; then
    echo "[INFO]"
    echo "[INFO] Checking out cgreen repository, this can take a few minutes"
    echo "[INFO]"
    svn checkout svn://svn.code.sf.net/p/cgreen/code/trunk cgreen_code
fi

if [ ! -d "$HOME/cgreen_build" ]; then
    echo "[INFO]"
    echo "[INFO] Building and installing cgreen"
    echo "[INFO]"
    cd $HOME
    mkdir -pv $HOME/cgreen_build
    cd $HOME/cgreen_build

    cmake ../cgreen_code/cgreen

    make
    make test
    make install
fi
