#!/bin/bash

echo "Preparing Google Play service account JSON..."

# Check if the env var exists
if [ -z "$ANDROID_SERVICE_ACCOUNT" ]; then
  echo "Error: ANDROID_SERVICE_ACCOUNT is not set"
  exit 1
fi

# Decode and save to file
echo $ANDROID_SERVICE_ACCOUNT | base64 -d > service-account.json
