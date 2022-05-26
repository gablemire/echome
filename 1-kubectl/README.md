# How to deploy

## Deploy the Deployment

```sh
kubectl apply -f deployment.yaml
```

## Deploy the NodePort

```sh
kubectl apply -f nodeport.yaml
```

## Check the app

[EchoMe app](http://localhost:30007/)

# Cleanup

```sh
kubectl delete services,deployments echome
```
