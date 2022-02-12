#!/bin/sh
aws dynamodb scan --table-name Leaderboard \
 --filter-expression "sk = :v1" --expression-attribute-values file://filterValue.json
