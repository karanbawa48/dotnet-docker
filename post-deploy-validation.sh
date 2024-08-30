#!/bin/bash

echo "Starting Post-Deployment Validation..."

# Validate if the application pods are running
echo "Checking if application pods are running..."
kubectl get pods -n your-namespace
if [ $? -ne 0 ]; then
    echo "Application pods are not running. Exiting."
    exit 1
fi

echo "Post-Deployment Validation completed successfully."

