# S3 Bucket Variables
s3_bucket_name = "andrewbucket"
s3_tags = {
  Name        = "andrewbucket"
  Environment = "Dev"
}

# DynamoDB Table Variables
dynamodb_table_name         = "TerraformStateLock"
dynamodb_billing_mode       = "PAY_PER_REQUEST"
dynamodb_partition_key      = "LockID"
dynamodb_partition_key_type = "S" # S = String
dynamodb_tags = {
  Environment = "Terraform"
  Purpose     = "State Locking"
}