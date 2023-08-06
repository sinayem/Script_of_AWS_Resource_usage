#!/bin/bash
##########################
# AUTHOR : SI NAYEM
# DATE : 6/8/23
# Version: V1
# This script will report AWS resource usage
#
#####################################
# Debug mode
set -x
# Date
date >> report.txt
echo 'Print list of s3 bucket: ' >> report.txt
aws s3 ls >> report.txt
echo 'Print list of ec2 instance : ' >> report.txt
aws ec2 describe-instances >> report.txt
echo 'Print only Instance ID: ' >> report.txt
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> report.txt
echo 'Print list of lamda functions: ' >> report.txt
aws lambda list-functions >> report.txt
echo 'Print list of iam user : ' >> report.txt
aws iam list-users >> report.txt
