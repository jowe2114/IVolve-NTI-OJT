# Objective: Create a YAML file for a MySQL StatefulSet configuration. Write a YAML file to define a service for the MySQL StatefulSet.

# Becuase of the Limitation of Docker Push in Openshift, I'll Use Minikube:
minikube start


# Create MySQL Secret Configuration:
vim mysql-secret.yaml
vim mysql-statefulset.yaml
vim mysql-service.yaml

# Apply the Configurations:
kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-service.yaml
kubectl apply -f mysql-statefulset.yaml

<img width="734" alt="Screenshot 2024-06-03 at 01 21 00" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/a79faf6f-faa2-4b99-9101-17748f678c2f">


# Verify the StatefulSet and Pods:
kubectl get pods -l app=mysql

<img width="734" alt="Screenshot 2024-06-03 at 01 32 20" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/ef455b66-a2b9-4f8f-9290-aa35c2ce6ffe">


# Create a Test Database:
kubectl exec -it mysql-0 -- mysql -u root -p

<img width="734" alt="Screenshot 2024-06-03 at 01 30 01" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/760eb9dd-5af9-4f0b-9e7d-1b044bfdb02f">


# Delete the StatefulSet:
kubectl delete statefulset mysql
kubectl get pvc
kubectl get pv


# Verify the Database Persistence:
kubectl exec -it mysql-0 -- mysql -u root -p

<img width="734" alt="Screenshot 2024-06-03 at 01 33 12" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/9bb706b4-137c-45fe-a2b7-aff2fabfc2ac">

