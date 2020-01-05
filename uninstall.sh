#!/bin/bash

CURRENT_DIR=$(pwd)
cd "$PERM_DIR"
cd ..
rm -R autoScript
cd ~
rm /bin/autoScript
sed -i '$ d' foo.txt
sed -i '$ d' foo.txt
echo "fi" >> .bashrc
cd "$CURRENT_DIR"
