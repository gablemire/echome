#!/bin/bash

echo "[INFO] Installing ArgoCD"

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -n argocd -f ./nodeport.yaml

echo "[INFO] ArgoCD installed successfully"

echo "[INFO] Waiting for ArgoCD to be reachable on port 30180"
while [[ $(kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}') != "True" ]]; do 
  echo "Waiting for ArgoCD to be ready..."
  sleep 3
done
echo "[INFO] ArgoCD is now reachable on port 30180"

pw=$(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
argocd login "localhost:30180" --insecure --username "admin" --password "${pw}"
argocd repo add https://github.com/gablemire/echome.git

echo "Dashboard credentials: admin / ${pw}"
open "http://localhost:30180"
