🔹 outputs.tf

Displays useful information after successful deployment, such as:

EC2 public IP address

EC2 instance ID

code:


output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.my_ec2.id
}

output "public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}
