# Echo Me

Small web app in NodeJS echoing the value set by the `MESSAGE` environment variable.

This small web app is deployed in Kubernetes using three different techniques:

1. kubectl YAML files
2. Helm chart
3. Helmsman

## Pre-requisites
- Docker
- Enable Kubernetes in Docker Desktop
  - Alternatively, you may use k3d or minikube

## How to run it locally

- Create a local image for the `echome` app. You may use the `build.sh` script to do so.
- Ensure your kubectl points towards your local installation
  ```sh
  kubectl config use-context docker-desktop
  ```
- Follow the instructions described in each README file under each folder
