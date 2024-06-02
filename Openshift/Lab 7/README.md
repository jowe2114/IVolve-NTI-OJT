## Objective: Deploy NGINX with 3 replicas. Createra service to expose NGINX deployment. Use port forwarding to access NGINX service locally. Update NGINX image to Apache. View deployment's rollout history. Roll back NGINX deployment to the previous image version and Monitor pod status to confirm successful rollback.

# OC Login:
oc login https://api.xxx:6443 --username=xxx --password=xxx

# Create a deployment YAML file:
vim nginx-deployment.yaml

# Apply the deployment:
oc apply -f nginx-deployment.yaml

<img width="682" alt="Screenshot 2024-06-02 at 11 16 41" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/7bb45979-4c63-48df-a4cf-d812a1d7c91e">


# Create a Service to Expose the NGINX Deployment:
vim nginx-service.yaml

# Apply the Service:
oc apply -f nginx-service.yaml

# Port Forward to Access NGINX Service Locally:
oc port-forward service/nginx-service 8080:80
<img width="682" alt="Screenshot 2024-06-02 at 11 15 37" src="https://github.com/jowe2114/IVolve-NT<img width="877" alt="Screenshot 2024-06-02 at 12 17 48" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/228684b7-414d-4f36-a75a-53ab3acac9af">


# Update NGINX Image to Apache:
Edit the deployment YAML file nginx-deployment.yaml and change the image to httpd:latest

<img width="682" alt="Screenshot 2024-06-02 at 23 27 35" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/c149089c-e305-442f-8f7c-37ac7d4456b9">

# Apply the changes::
oc apply -f nginx-deployment.yaml
oc port-forward service/nginx-service 8080:80
http://localhost:8080

<img width="1189" alt="Screenshot 2024-06-02 at 22 09 25" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/2d1a8c5f-1ad4-49c4-8e01-b96e04d850ca">


# View Deployment's Rollout History:
oc rollout history deployment/nginx-deployment

<img width="682" alt="Screenshot 2024-06-02 at 11 16 57" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/590f954e-026d-4f94-9980-8fbf53a44094">


# Roll Back NGINX Deployment to Previous Image Version:
kubectl rollout undo deployment/nginx-deployment --to-revision=1

<img width="682" alt="Screenshot 2024-06-02 at 11 17 09" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/2d827e2e-3c88-4d87-9cb8-cf8092394604">


# Monitor Pod Status to Confirm Successful Rollback:
kubectl get pods -w

<img width="682" alt="Screenshot 2024-06-02 at 11 17 09" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/6747fafd-4c98-4952-96ce-ae76212a5b1d">
