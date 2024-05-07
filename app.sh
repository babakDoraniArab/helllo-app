#!/bin/bash

# The desired app name
APPNAME=$1

# Path to the values.yaml file in your Helm chart
VALUES_FILE="./hello-app/values.yaml"

# Update the Appname in the values.yaml file
yq eval ".appName = \"hello-app-$APPNAME\"" -i $VALUES_FILE

# Install or upgrade the Helm chart with the updated values.yaml
helm install "hello-app-${APPNAME}" ./hello-app -f $VALUES_FILE  # For install
# helm upgrade "hello-app-${APPNAME}" ./hello-app -f $VALUES_FILE  # For upgrade

kubectl get pods -A | grep -i hello-app