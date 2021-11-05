#!/bin/bash
echo 'hello'



# download Ubuntu Server
rm -rf ubuntu.iso
cd /var/lib/vz/template/iso
wget https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-live-server-amd64.iso
mv ubuntu*.iso ubuntu.iso
