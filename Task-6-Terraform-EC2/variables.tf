🔹 variables.tf

Stores configurable input values, including:

AWS region

EC2 instance type

Key pair name

code:

variable "aws_region" {
  description = "AWS region where EC2 will be created"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
  default     = "my-key"
}
