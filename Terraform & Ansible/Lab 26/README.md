## Ansible Dynamic Inventories

## Objective: Set up Ansible dynamic inventories to automatically discover and manage infrastructure.


# Create Ansible Dir
mkdir -p ~/ansible/inventory
cd ~/ansible

# Install Boto3
pip install boto3

# Create the AWS EC2 Dynamic Inventory Configuration
vim aws_ec2.yml

# Update Ansible Configuration File
vim ansible.cfg

# Create the Playbook:
vim site.yml

# Run the Playbook
ansible-playbook site.yml
