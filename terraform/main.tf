variable "ami_value" {
    default = ""
    description = "value for the ami"
    type = string   
}

variable "instance_type" {
    default = ""
    description = "value for the instance type"
    type = string   
}

variable "subnet_id" {
    default = ""
    description = "value for the subnet id"
    type = string   
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "var.ami_value"
    instance_type = "var.instance_type"
    subnet_id = "var.subnet_id"
}
