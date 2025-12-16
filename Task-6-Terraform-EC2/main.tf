🔹 main.tf

Defines the AWS provider

Creates an Amazon EC2 instance

Specifies important parameters such as:

AMI ID

Instance type

Key pair

Security group


code:

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-EC2-Instance"
  }
}
