# How to install Helm charts

```sh
helmsman --apply -f apps.yaml
```

## Visit sites

- [Dashboard](http://localhost:30001)
- [STG](http://localhost:30008)
- [PRD](http://localhost:30009)

# How to tear down

```sh
helmsman --destroy -f apps.yaml
kubectl delete namespace stg
kubectl delete namespace prd
```
