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

-   **Clone this repository with submodules**
    >
        git clone --recurse-submodules --remote-submodules https://github.com/jsterlingholt/homelab
        cd homelab

    ---
    
    *The following must be repeated for each node that gets added:*


-   **Enable pxe boot for each pi**
    1.  Copy rpi4-netboot directory to remote server
    2.  Run enable-netboot script
    > 
        scp -r rpi4-netboot [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        sudo ./rpi4-netboot/enable-netboot.sh

    ---
    
-   **Configure TFTP Server**
    1.  Copy pxe-server directory to remote server
    2.  Move pxe-server into ~/.bin
    3.  Run init script
    
    >
        scp -r pxe-server [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        mkdir .bin
        mv pxe-server .bin/
        sudo ./.bin/pxe-server/init.sh

    
    ---

-   **Configure TrueNAS Server**
    1.  Words
    2.  Other Words

    >
        ...

4. Set up Ignition File

---