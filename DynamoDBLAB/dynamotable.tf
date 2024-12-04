resource "aws_dynamodb_table" "terraform_locks" {
  name         = "TerraformStateLock" # Update the table name if needed
  billing_mode = "PAY_PER_REQUEST"    # Use on-demand billing mode
  hash_key     = "LockID"             # Partition key

  attribute {
    name = "LockID"
    type = "S" # S stands for String
  }

  tags = {
    Environment = "Terraform"
    Purpose     = "State Locking"
  }
}