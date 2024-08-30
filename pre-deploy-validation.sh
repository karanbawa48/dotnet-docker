#!/bin/bash

echo "Starting Pre-Deployment Validation..."

# Check if AKS Cluster is reachable
echo "Checking AKS Cluster connectivity..."
kubectl get nodes
if [ $? -ne 0 ]; then
    echo "AKS Cluster is not reachable. Exiting."
    exit 1
fi

echo "Pre-Deployment Validation completed successfully."

