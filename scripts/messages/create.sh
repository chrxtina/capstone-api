#!/bin/bash

curl --include --request POST http://localhost:4741/messages \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "message": {
      "body": "Hello!",
      "conversation_id": 1
    }
  }'
