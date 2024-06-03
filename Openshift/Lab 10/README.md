# Objective: Build image from Dockerfile https://github.com/IbrahimmAdel/static-website.git and push it to your DockerHub. Create a deployment using this custom NGINX image. Create a service to expose the deployment. Define a network policy that allow traffic to the NGINX pods only from other pods within the same namespace. Enable the NGINX Ingress controller using Minikube addons. Create an Ingress resource. Update /etc/hosts to map the domain to the Minikube IP address. Access the custom NGINX service via the Ingress endpoint using the domain name. create a route in openshift.

# Build and Push Docker Image to DockerHub:
git clone https://github.com/IbrahimmAdel/static-website.git
cd static-website
docker build -t your_dockerhub_username/static-website:latest .
docker login
docker push your_dockerhub_username/static-website:latest
<img width="724" alt="Screenshot 2024-06-03 at 21 39 30" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/105d4b17-e2fe-4e55-8e46-75a150c13116">
<img width="725" alt="Screenshot 2024-06-03 at 21 42 42" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/fbeb0416-c68d-4614-b05d-95f3a7b2ca26">

# Start Minikube:
minikube start

# Create a Deployment using the custom NGINX image:
<img width="725" alt="Screenshot 2024-06-03 at 21 45 54" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/ce6e87c5-1f72-416d-8c4d-2985c6d7f510">

# Create a Service to expose the deployment:
<img width="775" alt="Screenshot 2024-06-03 at 21 47 33" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/7061aa7d-f51f-42f4-825d-e40fd9d83601">

# Apply the network policy:
<img width="775" alt="Screenshot 2024-06-03 at 21 48 19" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/9716818f-ae96-456b-946f-05e17627aa7a">

# Enable NGINX Ingress Controller and Create Ingress Resource
<img width="775" alt="Screenshot 2024-06-03 at 21 50 52" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/ee9367a8-390b-487f-8a8e-192a52366b12">

# Update /etc/hosts and Access the Service
<img width="775" alt="Screenshot 2024-06-03 at 21 52 21" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/c3419e30-55aa-4379-a047-a17338b3e1d6">

<img width="1392" alt="Screenshot 2024-06-03 at 21 53 40" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/d5055cad-2ad3-4b4e-81a6-f31bacc4fb18">

# Create a route in Openshift:
<img width="775" alt="Screenshot 2024-06-03 at 22 02 24" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/04be67cc-128c-4432-90b2-80c913ac0bc0">
<img width="775" alt="Screenshot 2024-06-03 at 22 16 41" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/643dadab-1487-4466-bd31-613df120ec3e">
