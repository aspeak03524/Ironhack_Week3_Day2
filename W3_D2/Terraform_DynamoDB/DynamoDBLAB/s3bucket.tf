resource "aws_s3_bucket" "example" {
  bucket = "andrewbucket1989"

  tags = {
    Name        = "andrewbucket1989"
    Environment = "Dev"
  }
}