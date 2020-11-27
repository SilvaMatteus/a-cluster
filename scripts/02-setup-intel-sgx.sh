#!/bin/bash

# Dependencies
yes | apt-get update
yes | apt-get install git python make linux-headers-$(uname -r) gcc

# Latest SGX driver
git clone https://github.com/01org/linux-sgx-driver.git
cd linux-sgx-driver

make
make install
modprobe isgx
cd ..
rm -rf linux-sgx-driver
