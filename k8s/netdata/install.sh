#!/bin/bash

kubectl create namespace netdata

helm repo add netdata https://netdata.github.io/helmchart/
helm repo update

helm install netdata netdata/netdata -n netdata

kubectl delete ingress -n netdata
kubectl create -f ~/NT531/k8s/netdata:
