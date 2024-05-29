# Install and Configure Apache
# Deploy Sample Website
# Configure Firewall
# Remove Default Welcome Page
# Deploy Sample Website (again to ensure it's the only content)
# Enable Apache Modules
# Apply Security Settings
# Restart Apache
# Restart Apache to apply all changes.
# Use the Inventory File to run the Script
ansible-playbook -i ~/ansible_inventory/hosts configure_web_server.yml
