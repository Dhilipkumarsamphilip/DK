terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "pm-bucket-007"
    key = "DK/terrastate/terraform.tfstat"
    encrypt = true
    dynamodb_table = "terraform-lock"
  }
}
