#!/bin/bash

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "cn@cn",
      "password": "123",
      "password_confirmation": "123"
    }
  }'

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "ab@ab",
      "password": "123",
      "password_confirmation": "123"
    }
  }'
