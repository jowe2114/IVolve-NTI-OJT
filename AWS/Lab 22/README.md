## Objective Use the AWS CLI to Create an S3 bucket, configure permissions, and upload/download files to/from the bucket. Enable versioning and logging for the bucket.

# Create an S3 Bucket:
aws s3api create-bucket --lab22ivolve --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1

# Configure Permissions and Apply Policy :
aws s3api put-bucket-policy --bucket lab22ivolve --policy file://bucket-policy.json

# Upload Files to the Bucket:
aws s3 cp Ivolve_Test.pdf s3://lab22ivolve/

# Download Files from the Bucket:
aws s3 cp s3://lab22ivolve/Ivolve_Test.pdf .

# Enable Versioning: 
aws s3api put-bucket-versioning --bucket lab22ivolve --versioning-configuration Status=Enabled
aws s3api get-bucket-versioning --bucket lab22ivolve


# Enable Logging:
aws s3api create-bucket --bucket lab22ivolve-logs --region us-east-1 --create-bucket-configuration LocationConstraint=us-east-1
aws s3api put-bucket-policy --bucket lab22ivolve-logs --policy file://log-bucket-policy.json

# Verification:
aws s3api get-bucket-logging --bucket lab22ivolve





