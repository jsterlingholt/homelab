echo 'Step 1. Update system'
./update.sh
echo 'Step 2. Install Ansible & ansible dependencies'
./ansible.sh
echo 'Step 3. Install Kubernetes'
./kube.sh