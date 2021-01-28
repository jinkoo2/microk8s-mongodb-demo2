#!/bin/sh
##
# Script to remove/undepoy all project resources from the local Minikube environment.
##

# Delete mongod stateful set + mongodb service + secrets + host vm configuer daemonset
sudo microk8s kubectl delete statefulsets mongod
sudo microk8s kubectl delete services mongodb-service
sudo microk8s kubectl delete secret shared-bootstrap-data
sleep 3

# Delete persistent volume claims
sudo microk8s kubectl delete persistentvolumeclaims -l role=mongo

