terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.21.0"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "jack.roper"
}

resource "aws_instance" "example_server" {
  ami           = "ami-04f9aa2b7c7091927"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}
