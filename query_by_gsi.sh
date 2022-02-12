#!/bin/sh
aws dynamodb query --table-name Leaderboard \
    --index-name sk-top_score-index \
    --no-scan-index-forward  \
    --key-condition-expression "sk = :v1"  \
    --expression-attribute-values  file://filterValue.json
