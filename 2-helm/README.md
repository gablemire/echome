# To debug Helm chart

```sh
helm template echome-stg echome -f echome/stg.yaml 
```

# To install Helm chart

```sh
helm upgrade --install echome-stg echome -f echome/stg.yaml -n stg --create-namespace
helm upgrade --install echome-prd echome -f echome/prd.yaml -n prd --create-namespace
```

## Visit sites

- [STG](http://localhost:30008)
- [PRD](http://localhost:30009)

## Install 3rd party charts

```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
helm upgrade --install local-mysql bitnami/mysql --version 11.1.2 -f mysql/values.yaml --namespace db --create-namespace
```

## Connect to the MySQL database
Host: localhost:30200
Username: root
Password: aHz4Fiof7CfkSnt6UqdP
Database: echome

# Cleanup

```sh
helm uninstall echome-stg -n stg
helm uninstall echome-prd -n prd
helm uninstall local-mysql -n db
```
