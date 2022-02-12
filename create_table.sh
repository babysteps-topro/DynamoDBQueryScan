#!/bin/sh
aws dynamodb create-table \
    --table-name Leaderboard \
    --attribute-definitions \
        AttributeName=user_id,AttributeType=S \
        AttributeName=sk,AttributeType=S \
    --key-schema \
        AttributeName=user_id,KeyType=HASH \
        AttributeName=sk,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5




aws dynamodb update-table \
    --table-name Leaderboard \
    --attribute-definitions AttributeName=sk,AttributeType=S AttributeName=top_score,AttributeType=N \
    --global-secondary-index-updates file://gsi.json
