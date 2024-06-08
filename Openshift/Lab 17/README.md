# ArgoCD and ELK Stack Deployment on OpenShift

This guide provides instructions for deploying ArgoCD and the ELK stack (Elasticsearch, Logstash, Kibana) using Operators in an OpenShift environment.

## Prerequisites

1. An OpenShift cluster up and running.
2. The `oc` CLI installed and configured to access your OpenShift cluster.


# Log in to OpenShift
bash oclogin.sh

# Install the ArgoCD Operator:
<img width="1440" alt="Screenshot 2024-06-08 at 18 47 54" src="https://github.com/jowe2114/IVolve-NTI-OJT/assets/126627967/f2093cbf-4153-4696-80f8-ff49547078dc">

# Deploy ArgoCD Instance:
oc get route -n argocd

