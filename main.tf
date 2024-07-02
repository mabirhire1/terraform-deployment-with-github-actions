terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "web" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }

output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
