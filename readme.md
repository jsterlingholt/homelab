# Homelab
##### Raspberry Pi Cluster

|   Hardware                |   Qty |
|   ------------------------|   ----|
|   Raspberry Pi 4 Model B  |   2   |
|   Proxmox VMs             |   2   |

---



**End Result:** A mostly ServerReady compliant cluster, with each node booting arm64 Core OS from a local TFTP server.

---
**Steps:**

1.  **Clone this repository with submodules**
    >
        git clone --recurse-submodules --remote-submodules https://github.com/jsterlingholt/homelab
        cd homelab

    ---
    
2.  **Configure TFTP Server**
    1.  Copy pxe-server to remote server
    2.  Move pxe-server into ~/.bin
    3.  Run init script`
    
    >
        scp -r pxe-server [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        mkdir .bin
        mv pxe-server .bin/
        sudo ./.bin/pxe-server/init.sh

    
    ---
    
3.  **Enable pxe boot for each pi**
    1.  Meow
    2.  Meow
    > 
        scp -r rpi4-netboot [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        sudo ./rpi4-netboot/enable-netboot.sh
    ---
4. Set up Ignition File

---