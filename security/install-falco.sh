#!/bin/bash
# Install Falco for runtime security monitoring

echo "Adding Falco Helm repository..."
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo update

echo "Installing Falco..."
helm install falco falcosecurity/falco \
  --namespace falco-system \
  --create-namespace \
  --set falco.grpc.enabled=true \
  --set falco.grpcOutput.enabled=true

echo "Falco installed successfully!"
kubectl get pods -n falco-system
