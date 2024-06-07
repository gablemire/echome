# How to install Helm charts

```sh
helmsman --apply -f apps.yaml
```

## Visit sites

- [STG](http://localhost:30008)
- [PRD](http://localhost:30009)

## Connect to the MySQL database
Host: localhost:30200
Username: root
Password: aHz4Fiof7CfkSnt6UqdP
Database: echome

# How to tear down

```sh
helmsman --destroy -f apps.yaml
```
