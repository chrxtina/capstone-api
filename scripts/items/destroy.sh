#!/bin/bash

curl --include --request DELETE http://localhost:4741/items/$ID \
  --header "Authorization: Token token=$TOKEN"
