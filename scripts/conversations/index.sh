#!/bin/bash

curl --include --request GET http://localhost:4741/conversations \
  --header "Authorization: Token token=$TOKEN"
