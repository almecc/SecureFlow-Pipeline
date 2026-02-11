#!/bin/bash
# Install OPA Gatekeeper to Kubernetes cluster

echo "Installing OPA Gatekeeper..."
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml

echo "Waiting for Gatekeeper to be ready..."
kubectl wait --for=condition=Ready pod -l control-plane=controller-manager -n gatekeeper-system --timeout=90s

echo "OPA Gatekeeper installed successfully!"
kubectl get pods -n gatekeeper-system
