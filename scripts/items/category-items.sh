#!/bin/bash

curl --include --request GET http://localhost:4741/category/$category \
  --header "Authorization: Token token=$TOKEN"
