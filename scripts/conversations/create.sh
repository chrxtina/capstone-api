#!/bin/bash

curl --include --request POST http://localhost:4741/conversations \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "conversation": {
      "user1": 1,
      "user2": 2,
      "name": "User1, User2"
    }
  }'
