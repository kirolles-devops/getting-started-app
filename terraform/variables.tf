variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "ec2_public_key" {
  description = "Public SSH key for EC2 access (stored in GitHub Secrets)"
  type        = string
}
