#!/bin/sh
aws dynamodb query --table-name Leaderboard \
  --key-condition-expression "user_id = :v1 " \
  --expression-attribute-values  file://filterValue.json
