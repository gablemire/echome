# To install Helm chart

```sh
helm install echome-stg echome -f stg.yaml -n stg --create-namespace
helm install echome-prd echome -f prd.yaml -n prd --create-namespace
```

## Visit sites

- [STG](http://localhost:30008)
- [PRD](http://localhost:30009)

## Install 3rd party charts

```sh
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm install k8s-dashboard kubernetes-dashboard/kubernetes-dashboard -f dashboard/values.yaml
kubectl apply -f dashboard/dashboard-admin.yaml
```

## Visit dashboard

[Dashboard](http://localhost:30001)

# Cleanup

```sh
helm uninstall echome-stg -n stg
kubectl delete namespace stg

helm uninstall echome-prd -n prd
kubectl delete namespace prd

helm uninstall k8s-dashboard
```
