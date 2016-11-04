#!/bin/bash

curl --include --request GET http://localhost:4741/items \
  --header "Authorization: Token token=$TOKEN"
