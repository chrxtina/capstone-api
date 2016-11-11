#!/bin/bash

curl --include --request GET http://localhost:4741/messages/$ID \
  --header "Authorization: Token token=$TOKEN"
