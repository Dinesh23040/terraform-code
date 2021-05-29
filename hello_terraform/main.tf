terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.40.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "example" {
  ami           = "ami-098f16afa9edf40be"
  instance_type = "t2.micro"
  key_name      = ""

  tags = {
    Name = "Terraform Created"
  }
}
