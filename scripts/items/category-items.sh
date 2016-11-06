#!/bin/bash

curl --include --request GET http://localhost:4741/categories/$category \
  --header "Authorization: Token token=$TOKEN"
