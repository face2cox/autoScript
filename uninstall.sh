#!/bin/bash
CURRENT_DIR=$(pwd)
cd "$PERM_DIR"
cd ..
rm -R autoScript
cd ~
rm /bin/autoScript
sed -i '$ d' ~/.bashrc
sed -i '$ d' ~/.bashrc
echo "fi" >> ~/.bashrc
cd 
