terraform {
  backend "s3" {
    bucket         = "bucket-name"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "table-name"
    encrypt        = true
  }
}
