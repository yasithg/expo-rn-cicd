#!/bin/bash

echo "=== DEBUG: Starting pre-submit hook ==="


echo "Preparing Google Play service account JSON..."

# Check if the env var exists
if [ -z "$SERVICE_ACCOUNT" ]; then
  echo "Error: SERVICE_ACCOUNT is not set"
  exit 1
fi

# Decode and save to file
echo $SERVICE_ACCOUNT | base64 -d > service-account.json

ls -l service-account.json
cat service-account.json | head -n 5
echo "=== DEBUG: Finished pre-submit hook ==="
