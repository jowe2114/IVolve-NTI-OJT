# Ansible
# Objective: Install and configure Ansible Automation Platform on control nodes, create inventories of 2 managed hosts, and then perform ad-hoc commands to check functionality.
# Install Ansible
sudo apt install ansible
# Create Ansible Inventory
mkdir ~/ansible_inventory
nano ~/ansible_inventory/hosts
# Add Managed Hosts to the Inventory File
[web]
v2 ansible_host=192.168.100.102 ansible_user=v2
v1 ansible_host=192.168.100.101 ansible_user=v1
# Enable SSH on V1 & V2
sudo systemctl status ssh
sudo systemctl start ssh
sudo systemctl enable ssh
sudo ufw allow ssh
sudo ufw reload
# check SSH Connection 
ssh v2@192.168.100.102
ssh-copy-id v2@192.168.100.102

ssh v1@192.168.100.101
ssh-copy-id v1@192.168.100.101
# Generate SSH Key Pair
ssh-keygen
# Copy SSH Key to Managed Hosts 
ssh-copy-id v2@192.168.100.102
ssh-copy-id v1@192.168.100.101
# Run Commands on Managed Hosts
# Check uptime
ansible -i ~/ansible_inventory/hosts all -m shell -a 'uptime'

# Check disk usage
ansible -i ~/ansible_inventory/hosts all -a 'df -h'
