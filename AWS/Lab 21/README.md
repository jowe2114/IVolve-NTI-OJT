## Objective: create VPC with 2 subnets, launch 2 EC2s with nginx and apache installed, and create and configure a Load Balancer to access the Web server.

# Create a VPC (Lab21)

# Create 2 Subnets (nginx & Apache)

# Configure instance for nginx with:

enable HTML port 80

sudo yum update -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl start nginx
sudo systemctl enable nginx

# configure Instance for Apache:

enable HTML port 80

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd


# Configure Target Group

# Create Load Balancer

# Load Balancer with Health Check:
/health_checker
