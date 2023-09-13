#!/bin/bash

#############################################

# Author: Chetan Malagoudar
# Date: 16th July 2023
# 
# Version: v1
#
# This script will report the Aws usage.
#
############################################

set -x # debug mode

export AWS_PROFILE=Chetan-admin
export AWS_REGION=ap-south-1

 #AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users


# List s3 buckets
aws s3 ls

# List Ec2 instances
aws ec2 describe-instances

# List Lambda functions
aws lambda list-functions

# List IAM users
aws iam list-users
