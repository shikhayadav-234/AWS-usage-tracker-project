#!/bin/bash

####################################
# Author: Shikha
# Date: 20th August
# version: v1
#
# This script will report the AWS resource usage
###################################


set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#List s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list EC2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances |jq '.Reservations[].Instances[].InstanceId'

#list AWS lambda
echo "print list of lambda functions"
aws lamda list-functions

#list IAM Users
echo "print list of IAM users"
aws iam list-users


