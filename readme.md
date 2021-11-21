# Raspberry Pi Cluster

---

#### Hardware {#hardware}

| Qty | Hardware |
| - | ----------- |
| 2 | Raspberry Pi 4 Model B | 
| 1 | Managed PoE Switch |

---

01. Clone this directory with submodules:
    >
        git clone --recurse-submodules --remote-submodules https://github.com/jsterlingholt/homelab

02. Configure TFTP server 
    >
        scp pxe-server [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        sudo ./pxe-server/configure-pxe.sh

03. Enable pxe boot for each pi
    > 
        scp rpi4-netboot [$USER]@[$IP]:/home/[$USER]/
        ssh [$USER]@[$IP]
        sudo ./rpi4-netboot/enable-netboot.sh

03. Set up Ignition File

---