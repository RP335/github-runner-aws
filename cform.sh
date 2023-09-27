#!/bin/bash
set -e
AWS_PROFILE=staging

aws cloudformation deploy \
    --profile $AWS_PROFILE \
    --template-file test.yaml \
    --stack-name kperf-stack \
    --capabilities CAPABILITY_NAMED_IAM
