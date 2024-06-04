# Objective: Create a deployment for Jenkins with an init container that sleeps for 10 seconds before the Jenkins container starts. Use readiness and liveness probes to monitor Jenkins. Create a NodePort service to expose Jenkins. Verify that the init container runs successfully and Jenkins ieproperly initialized. What is the differnet between readiness & liveness, init & sidecar container.

# Create a Deployment file:
DeploymentConfig: Defines the Jenkins deployment configuration for OpenShift.
Init Container: The init container runs a busybox image and sleeps for 10 seconds before starting the main Jenkins container.
Readiness Probe: Checks if Jenkins is ready by accessing the /login endpoint. It starts 30 seconds after the container starts and checks every 10 seconds.
Liveness Probe: Checks if Jenkins is still running by accessing the /login endpoint. It starts 60 seconds after the container starts and checks every 30 seconds.
<img width="842" alt="Screenshot 2024-06-04 at 23 35 48" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/0b189b8c-21e3-46be-9ea9-6354b2f38297">

# Create the `service file abd apply it:
oc apply -f jenkins_service.yml

Show the Deployment and services and the NodePort:
<img width="842" alt="Screenshot 2024-06-05 at 00 04 21" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/2a5779fb-cd50-43a9-8f8c-3cdf584acbb4">
