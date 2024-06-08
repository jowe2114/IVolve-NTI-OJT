# Lab 10: Source-to-Image (S2I) Workflow

# Objective: The objective of this lab is to use Source-to-Image (S2I) to build container images directly from application source code and deploy an application using the S2I workflow.

# Clone the repository:
git clone https://github.com/IbrahimmAdel/html.git
cd html

# Log in to OpenShift
oc login <your-openshift-cluster-url>

# Create a new project
oc new-project my-html-project

# Create a BuildConfig using the Nginx builder image
oc new-build --name=my-html-app --binary --strategy=source --image-stream=nginx:latest

# Start the build process and upload source code
oc start-build my-html-app --from-dir=. --follow

# Create a DeploymentConfig
oc new-app my-html-app


# Expose the service to create a route
oc expose svc/my-html-app

<img width="736" alt="Screenshot 2024-06-08 at 14 35 34" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/dd9729cc-d37a-4890-9472-b726950b6754">
<img width="736" alt="Screenshot 2024-06-08 at 14 38 10" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/ff6b39d3-db6e-44e2-be75-3bd4cf38bba7">


# Get the URL of the route
oc get route my-html-app

<img width="736" alt="Screenshot 2024-06-08 at 14 36 08" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/5246f663-e02e-4485-b8a7-6377260f1d52">

<img width="1392" alt="Screenshot 2024-06-08 at 14 39 44" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/7fc9556d-d096-4673-87bc-5ae9eab8d7a9">

# Using GUI:

<img width="1440" alt="Screenshot 2024-06-08 at 15 03 13" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/65bdee85-249d-41a9-995f-1580d393052b">

<img width="1440" alt="Screenshot 2024-06-08 at 15 05 16" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/e23a3fd9-4c71-40f7-be76-ab75e8f62eba">

<img width="1440" alt="Screenshot 2024-06-08 at 15 05 33" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/b8383ab6-712d-4f9c-b96c-0aed8b5fba63">
