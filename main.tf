provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "example" {
    ami           = "ami-00992c69aee3b7f50"
    instance_type = "t2.micro"
}
