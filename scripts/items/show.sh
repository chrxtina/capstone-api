#!/bin/bash

curl --include --request GET http://localhost:4741/items/$ID \
  --header "Authorization: Token token=$TOKEN"
