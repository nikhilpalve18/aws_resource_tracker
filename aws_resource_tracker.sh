#!/bin/bash

# Author: Nikhil Palve
# Date: 3/Oct/2023
# Version: v1
# This script will report the aws resource usage

## Resources we are going to track
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM users

set -x

# list all s3 buckets
echo "printing list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "printing list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list AWS Lambda
echo "printing lambda functions"
aws lambda list-functions

# list IAM users
echo "printing IAM users"
aws iam list-users





