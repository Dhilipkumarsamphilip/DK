provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is the AMI value"
}

variable "instance_type" {
  description = "This is the instance type value"
}

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
}
