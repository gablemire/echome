# Echo Me

Small web app in NodeJS echoing the value set by the `MESSAGE` environment variable.

This small web app is deployed in Kubernetes using three different techniques:

1. kubectl YAML files
2. Helm chart
3. Helmsman

## How to run it locally

- Use Docker Desktop Kubernetes (or Minikube or any other local Kubernetes provider)
- Create a local image for the `echome` app.
  - In a shell in the `app` folder, run:
    ```sh
    docker build -t echome:latest .
    ```
- Ensure your kubectl points towards your local installation
- Follow the instructions described in each README file under each folder
