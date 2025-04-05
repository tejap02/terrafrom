# main.tf

# Specify the provider (AWS in this case)
provider "aws" {
  region = "us-west-1"  # Specify the AWS region where the bucket should be created
}

# Define the S3 bucket resource
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name-12345"  # Change this to a globally unique name
  acl    = "private"  # Set the access control to private
}

# Define the output to display after the apply
output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.example_bucket.arn
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.example_bucket.bucket
}
