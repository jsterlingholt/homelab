# Homelab

---

##### Raspberry Pi Cluster
A mostly ServerReady compliant cluster, with each node booting arm64 Core OS from a local TFTP server.

**Requirements:**

|   Hardware                |   Qty |
|   ------------------------|   ----|
|   Raspberry Pi 4 Model B  |   2   |
|   Proxmox VMs             |   2   |

---
**Steps:**

0.  **Clone this repository with submodules**
    >
        git clone --recurse-submodules --remote-submodules https://github.com/jsterlingholt/homelab
        cd homelab

    ---

    *The following must be repeated for each node that gets added:*


1.  **Enable pxe boot for each pi**
    -   Copy rpi4-netboot directory to remote server
    -   Run enable-netboot script
    > 
        scp -r rpi4-netboot [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        sudo ./rpi4-netboot/enable-netboot.sh

    ---
    
2.  **Configure TFTP Server**
    -   Copy pxe-server directory to remote server
    -   Move pxe-server into ~/.bin
    -   Run init script
    
    >
        scp -r pxe-server [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        mkdir .bin
        mv pxe-server .bin/
        sudo ./.bin/pxe-server/init.sh

    
    ---

3.  **Configure TrueNAS Server**
    -   Words
    -   Other Words

    >
        ...

4. Set up Ignition File

---