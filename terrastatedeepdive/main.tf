provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "DK" {
    ami = "ami-084568db4383264d4"
    instance_type = "t2.micro"
    subnet_id = "subnet-0d59a3527907dc62b"
}

resource "aws_s3_bucket" "s3-bucket" {
    bucket = "pm-bucket-007"
}

resource "aws_dynamodb_table" "terraform-lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
