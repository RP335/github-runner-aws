#!/bin/bash
set -e
AWS_PROFILE=staging

aws cloudformation deploy \
    --profile $AWS_PROFILE \
    --template-file simple.yaml \
    --stack-name github-actions-runner-ecs-stack \
    --capabilities CAPABILITY_NAMED_IAM
