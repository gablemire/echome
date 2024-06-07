# How to deploy

## Create the namespace

```sh
kubectl create namespace echome
```

## Deploy the Deployment

```sh
kubectl apply -f deployment.yaml -n echome
```

## Deploy the NodePort

```sh
kubectl apply -f nodeport.yaml -n echome
```

## Check the app

[EchoMe app](http://localhost:30007/)

# Cleanup

```sh
kubectl delete ns echome
```
