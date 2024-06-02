## Objective: Deploy NGINX with 3 replicas. Createra service to expose NGINX deployment. Use port forwarding to access NGINX service locally. Update NGINX image to Apache. View deployment's rollout history. Roll back NGINX deployment to the previous image version and Monitor pod status to confirm successful rollback.

# OC Login:
oc login https://api.xxx:6443 --username=xxx --password=xxx

# Create a deployment YAML file:
vim nginx-deployment.yaml

# Apply the deployment:
kubectl apply -f nginx-deployment.yaml

# Create a Service to Expose the NGINX Deployment:
vim nginx-service.yaml

# Apply the Service:
kubectl apply -f nginx-service.yaml

# Port Forward to Access NGINX Service Locally:
kubectl port-forward service/nginx-service 8080:80

# Update NGINX Image to Apache:
Edit the deployment YAML file nginx-deployment.yaml and change the image to httpd:latest

# Apply the changes::
kubectl apply -f nginx-deployment.yaml
kubectl port-forward service/nginx-service 8080:80
http://localhost:8080

# View Deployment's Rollout History:
kubectl rollout history deployment/nginx-deployment


# Roll Back NGINX Deployment to Previous Image Version:
kubectl rollout undo deployment/nginx-deployment --to-revision=1


# Monitor Pod Status to Confirm Successful Rollback:
kubectl get pods -w




