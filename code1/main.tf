terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_iam_group" "group1" {
  name = "Security"
  
}


resource "aws_iam_user" "user1" {
  name = "Cadette"

}

resource "aws_lightsail_instance" "instance" {
  name              = "paddy"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  #key_pair_name     = "paddy-key"
  tags = {
    env = "dev"
  }
}