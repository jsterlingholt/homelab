#!/bin/bash
echo 'hello'



# download Ubuntu Server
rm -rf ubuntu.iso
cd /var/lib/vz/template/iso
wget https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-live-server-amd64.iso?_ga=2.165848378.522787571.1636046166-1234176970.1634323943
mv ubuntu* ubuntu.iso