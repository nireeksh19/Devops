############################################

# Author: Nireeksh
# Date: 13th- April

# Version: v1
# This script will report AWS resource usage

############################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets" >> resourceTracker
aws s3 ls >> resourceTracker

# list EC2 Instances
echo "Print list of ec2 instance IDs" >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list lambda
echo "Print list of lambda functions" >> resourceTracker
aws lambda list-functions >> resourceTracker

# list IAM users
echo "Print list of IAM users IDs" >> resourceTracker
aws iam list-users | jq '.Users[].UserId' >> resourceTracker
