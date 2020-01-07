#!/bin/bash

sed -i '$ d' ~/.bashrc
echo "export PERM_DIR=$(pwd)" >> ~/.bashrc
echo "fi" >> ~/.bashrc
PERM_DIR=$(pwd)

chmod +x autoScript.sh
chmod +x update
chmod +x uninstall.sh
chmod +x depnd
chmod +x uninstall.sh
./depnd

mkdir Programs
cd Programs

git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool
make
make install
cd ..

git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
make
make install
cd $PERM_DIR

chmod +x autoScript
sudo mv autoScript /bin/

mkdir Handshake
mkdir PMKID
mkdir Captured-Packets

sudo apt-get update
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo dpkg --configure -a
sudo apt-get update --fix-missing
sudo apt-get install -f
sudo apt-get update
apt-get install figlet -y
apt-get install libpcap -y
sudo apt-get install libssl-dev -y
sudo apt install zlib1g-dev -y
apt-get install libcurl4-openssl-dev -y
apt install hashcat -y
apt-get install aircrack-ng -y
apt-get install bc -y

rm install.sh
clear
reset
