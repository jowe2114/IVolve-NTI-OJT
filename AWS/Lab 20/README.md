# Objective

Create a private subnet and launch an EC2 instance. Configure security groups and connect to the instance using a Public Subnet.

# Create VPC

# Create Subnet

# Configure Security Group

# Launch the EC2 Instance

# Establish SSH-Connection for the PublicInstance 

ssh -i Downloads/dbserver.pem ec2-user@54.167.17.204


# Create the Key-Pair in the Public Instance

vim dbserver.pem


# Establish SSH-Connection for the Private, inside the PublicInstace
 
ssh -i dbserver.pem ec2-user@10.0.2.145
