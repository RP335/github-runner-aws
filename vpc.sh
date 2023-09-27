#!/bin/bash
set -e
AWS_PROFILE=staging

aws cloudformation deploy \
    --profile $AWS_PROFILE \
    --template-file vpc.yaml \
    --stack-name vpc-stack
