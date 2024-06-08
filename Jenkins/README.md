Kubernetes Deployment using Master-Slave Jenkins

Overview

This project is a demonstration of a continuous integration and continuous deployment (CI/CD) pipeline using Jenkins. The pipeline is designed to build a Docker image of the application, push it to Docker Hub, and deploy it to an OpenShift cluster. The Jenkins pipeline leverages a master-slave architecture and utilizes a shared Jenkins library for modular and reusable pipeline code.

# Configure Slave EC2:
using a ubuntu ec2 with t3small with 30gb vol
<img width="682" alt="Screenshot 2024-06-08 at 02 02 57" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/525b20e0-55a8-4be4-9130-089fea42ed59">

# configure Slave Node and Shared Library in Jenkins:
![Screenshot 2024-06-08 at 02 17 28](https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/b13e4c49-b4c5-458c-8c57-d1141bdb2897)

# Create Jenkinsfile and Push the Image to DockerHub:

<img width="1440" alt="Screenshot 2024-06-08 at 04 17 18" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/61c0a453-a16f-40c0-a337-6b1f6875f2b2">

# OpenShift Deployment Configuration:
oc apply -f deployment.yaml
oc create sa jenkins -n omaryousef
oc apply -f RoleAndRolebinding.yml
kubectl create token jenkins -n omaryousef

![Screenshot 2024-06-08 at 04 28 01](https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/c24cd713-4ca0-4a8d-8b6a-4401c6684613)

![Screenshot 2024-06-08 at 04 29 34](https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/204d31d4-4278-4227-8b7e-6042d48b0b60)

