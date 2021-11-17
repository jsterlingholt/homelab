
# Raspberry Pi Cluster

---

#### Hardware

| Qty | Hardware |
| - | ----------- |
| 2 | Raspberry Pi 4 Model B |
| 2 | More raspberry pi's coming
| 1 | Managed PoE Switch |

#### Master Pi
01. ##### Prepare workspace
    > 
        wget https://github.com/jsterlingholt/homelab-cluster
        mv homelab-cluster .cluster
        cd .cluster

02. ##### Run Post-Install
    1. Install [git](https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line), [ansible](https://www.ansible.com), and [microk8s](https://microk8s.io).

    2. Configure Ansible
    >   
        

03. ##### Run Ansible Task to configure kubernetes
    1. Configure kubernetes on Master Pi
    2. Create TFTP container to serve boot files
    3. Scan subnet for new Pis, add to inventory
    4. Configure kubernetes on Worker Pi's
    >
        script goes here

##### Other step