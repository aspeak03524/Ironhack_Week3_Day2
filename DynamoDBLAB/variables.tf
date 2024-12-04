variable "s3_bucket_name" {
  description = "Name of the S3 bucket to be created"
  type        = string
  default     = "andrewbucket" # Update if needed
}

variable "s3_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default = {
    Name        = "andrewbucket"
    Environment = "Dev"
  }
}

# Variables for DynamoDB Table
variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for Terraform state locking"
  type        = string
  default     = "TerraformStateLock" # Update if needed
}

variable "dynamodb_billing_mode" {
  description = "Billing mode for DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "dynamodb_partition_key" {
  description = "Partition key name for the DynamoDB table"
  type        = string
  default     = "LockID"
}

variable "dynamodb_partition_key_type" {
  description = "Partition key type for the DynamoDB table"
  type        = string
  default     = "S" # S = String
}

variable "dynamodb_tags" {
  description = "Tags for the DynamoDB table"
  type        = map(string)
  default = {
    Environment = "Terraform"
    Purpose     = "State Locking"
  }
}