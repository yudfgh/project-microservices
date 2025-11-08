#!/bin/bash
for service in user-service product-service order-service payment-service inventory-service; do
  echo "Building Docker image for $service..."
  docker build -t $service:latest $service
done
