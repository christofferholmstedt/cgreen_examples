#!/bin/bash

#############################################
# Installation of required packages for
# gcc compilation and some helper tools
#############################################

### Prevent Perl language issues
sudo apt-get -y install language-pack-en language-pack-sv

### Git and Vim
sudo apt-get -y install vim git

### Build tools
sudo apt-get -y install build-essential doxygen \
                        subversion cmake \
                        perl-doc
