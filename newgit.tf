terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
        # Ensure the version matches the one you want to use
    }
  }
}
  provider "aws" {
  region = "ap-south-1"
  version = "5.43.0"
}



resource "aws_instance" "web" {
  ami           = "ami-007020fd9c84e18c7"
  instance_type = "t2.micro"
  count         = 1
  
  tags = {
    key_Name = "ec2final"
    value    = "ec2final1"
  }
}

