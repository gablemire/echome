# How to work with ArgoCD

## Install ArgoCD in cluster
Run the `install.sh` script found in this directory.

It will install ArgoCD, connect the echome repository and open the Dashboard for you.

## Deploy the apps
1. Create the MySQL app using the `mysql.yaml` application YAML definition
2. Create the echome apps using the `echome-apps.yaml` application YAML definition

## Access the deployed resources

### EchoMe apps
- Follow links in the ArgoCD Dashboard

### MySQL
Host: localhost:30200
Username: root
Password: aHz4Fiof7CfkSnt6UqdP
Database: echome
