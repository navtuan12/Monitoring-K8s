#!/bin/bash

git clone https://github.com/prometheus-operator/kube-prometheus.git
cd kube-prometheus

mv ~/NT531/k8s/prometheus-grafana/grafana-ingress.yaml ~/NT531/k8s/prometheus-grafana/kube-prometheus/manifests/grafana-ingress.yaml
mv ~/NT531/k8s/prometheus-grafana/prometheus-ingress.yaml ~/NT531/k8s/prometheus-grafana/kube-prometheus/manifests/prometheus-ingress.yaml
mv ~/NT531/k8s/prometheus-grafana/alertmanager-ingress.yaml ~/NT531/k8s/prometheus-grafana/kube-prometheus/manifests/alertmanager-ingress.yaml

kubectl create -f ~/NT531/k8s/prometheus-grafana/kube-prometheus/manifests/setup
kubectl create -f ~/NT531/k8s/prometheus-grafana/kube-prometheus/manifests
