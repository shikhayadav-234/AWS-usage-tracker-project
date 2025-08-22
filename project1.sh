#!/bin/bash
#
##########################################
# Author: Shikha
# Date: 20th August
# Version: v1
#
# This script will track the usage of AWS
#########################################
#
set -x
# AWS EC2
# AWS S3
# AWS lambda
# AWS IAM users

#List AWS ec2 intances

echo "List ec2 intances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'



#List AWS S3 buckets
echo "list aws s3 buckets"
aws s3 ls

#List AWS Lambda functions
echo "list the aws lambda functions"
aws lambda list-functions

#List IAM users

echo "list the iam users"
aws iam list-users

