
# Homelab

---
#### Overview
At the center of my Homelab is a Proxmox[^Proxmox] server, which has three roles:
  - [x]   Ansible Control Plane to bootstrap:
    - [x] PXE TFTP/HTTP Server
    - [ ] Kubernetes cluster
  - [x]   NFS Server for storage management
  - [ ]   Gaming via VFIO

[^Proxmox]: [Proxmox](https://www.proxmox.com/en/proxmox-ve) is a Debian-based distro with a focus on virtual machines and containers.

<<<<<<< HEAD
=======
#####   TFTP:
-   Proxmox VM?
>>>>>>> 589a36cc4d554f65bb8dc25c0e915e254ee51b34



--- 
## Progress:
<<<<<<< HEAD
- [ ]   Create post-install script
  > -   Install dependencies
  > -   Clone repo
  > -   source bash
- [ ]   Fetch images to use for VMs
- [ ]   Create 


---


#### Post Install
SSH into your new install and enter the following command to run the post-install script: 
>
    wget https://github.com/jsterlingholt/homelab-cluster/.scripts/post-install.sh
    ./post-install.sh

---


#### Ansible Playbook
##### Configure PXE Server
>
    Meow
    
##### Configure Cluster Nodes
After each Raspberry Pi node boots from PXE, 
>
    get ansible playbook from control plane


=======
- [x]   Configure Pi for PXE boot
- [ ]   Create local TFTP server to serve OS to each node
- [ ]   Create custom OS for TFTP server
  - [ ]   Ansible Playbook to configure Master and Worker nodes
  - [ ]   CI/CD Workflow to create images for nodes
>>>>>>> 589a36cc4d554f65bb8dc25c0e915e254ee51b34

