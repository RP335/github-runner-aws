#!/bin/bash
set -e
AWS_PROFILE=staging

aws cloudformation deploy \
    --profile $AWS_PROFILE \
    --template-file cluster.yaml \
    --stack-name ecs-cluster-stack \
    --capabilities CAPABILITY_NAMED_IAM
