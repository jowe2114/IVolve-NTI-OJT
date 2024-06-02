## Objective: Deploy NGINX with 3 replicas. Createra service to expose NGINX deployment. Use port forwarding to access NGINX service locally. Update NGINX image to Apache. View deployment's rollout history. Roll back NGINX deployment to the previous image version and Monitor pod status to confirm successful rollback.

# OC Login:
oc login https://api.xxx:6443 --username=xxx --password=xxx

# Create a deployment YAML file:
vim nginx-deployment.yaml

# Apply the deployment:
oc apply -f nginx-deployment.yaml

<img width="682" alt="Screenshot 2024-06-02 at 11 16 28" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/337c06a4-1588-4d60-ac41-f65fd9eaef40">


# Create a Service to Expose the NGINX Deployment:
vim nginx-service.yaml

# Apply the Service:
oc apply -f nginx-service.yaml

# Port Forward to Access NGINX Service Locally:
oc port-forward service/nginx-service 8080:80
<img width="682" alt="Screenshot 2024-06-02 at 11 15 37" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/9f7dd245-ea0c-4ee3-a500-081629581553">

<img width="877" alt="Screenshot 2024-06-02 at 12 16 12" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/3e8d8a41-7be2-4835-8bdd-81cf71eb025b">




# Update NGINX Image to Apache:
Edit the deployment YAML file nginx-deployment.yaml and change the image to httpd:latest
<img width="682" alt="Screenshot 2024-06-02 at 11 15 43" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/c02d816a-8142-4cf2-8294-339eccd908a4">


# Apply the changes::
oc apply -f nginx-deployment.yaml
oc port-forward service/nginx-service 8080:80
http://localhost:8080

<img width="1189" alt="Screenshot 2024-06-02 at 22 09 25" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/8ae31485-8e0a-46e4-9d5a-3f4d22e51637">




# View Deployment's Rollout History:
oc rollout history deployment/nginx-deployment

<img width="682" alt="Screenshot 2024-06-02 at 11 16 41" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/df93dfbc-2c98-4969-a950-4db64d2d6080">



# Roll Back NGINX Deployment to Previous Image Version:
kubectl rollout undo deployment/nginx-deployment --to-revision=1

<img width="682" alt="Screenshot 2024-06-02 at 11 16 57" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/442d2eb2-0eb0-41a2-af12-dee5103ff5db">


# Monitor Pod Status to Confirm Successful Rollback:
kubectl get pods -w

<img width="682" alt="Screenshot 2024-06-02 at 11 17 09" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/ae0b3eaf-7340-41f1-aa53-767fab2f0b71">

<img width="682" alt="Screenshot 2024-06-02 at 11 22 30" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/682e8a4e-72c6-4a11-b26d-56c682582561">


