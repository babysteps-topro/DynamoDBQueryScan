#!/bin/sh
aws dynamodb batch-write-item --request-items  file://inputwrite.json

aws dynamodb batch-write-item --request-items  file://inputwrite2.json

aws dynamodb batch-write-item --request-items  file://inputwrite3.json
