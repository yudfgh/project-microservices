#!/bin/bash
kubectl apply -f mysql/mysql-deployment.yaml
for service in user-service product-service order-service payment-service inventory-service; do
  echo "Deploying $service..."
  kubectl apply -f $service/k8s/
done
