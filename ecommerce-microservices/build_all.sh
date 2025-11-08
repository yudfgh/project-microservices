#!/bin/bash
for service in user-service product-service order-service payment-service inventory-service; do
  echo "Building $service..."
  cd $service
  mvn clean package -DskipTests
  cd ..
done
