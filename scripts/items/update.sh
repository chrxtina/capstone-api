#!/bin/bash

curl --include --request PATCH http://localhost:4741/items/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "category": "Office",
      "title": "Whiteboard",
      "body": "Perfect for whiteboarding!",
      "location": "Downtown",
      "address": "125 Summer St. Boston, MA"
    }
  }'
