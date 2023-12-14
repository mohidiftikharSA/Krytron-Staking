#!/bin/bash

# Check if phoneNo argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <phoneNo>"
  exit 1
fi

# Set the API endpoint
API_ENDPOINT='https://api.uat.krytron.io/stakelogs/createStakeLogs'

# Set the phone number from the command line argument
PHONE_NO="$1"

# Run the curl command
curl -X 'POST' "$API_ENDPOINT" -H 'accept: application/json' -H 'Content-Type: application/json' -d "{\"phoneNo\": \"$PHONE_NO\"}"

