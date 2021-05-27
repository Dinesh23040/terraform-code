terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.40.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQXKGRSY2GBUJQZWS"
  secret_key = "GuBGpAV6TfuDp9c0O12ADHB+W4WTMDSlBAVf/KvN"
}

resource "aws_instance" "example" {
  ami           = "ami-098f16afa9edf40be"
  instance_type = "t2.micro"
  key_name      = "awskey"

  tags = {
    Name = "Terraform Created"
  }
}
