variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "ami_image_name" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}