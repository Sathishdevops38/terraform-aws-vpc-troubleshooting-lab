terraform {
  required_version = ">= 0.12.20"
  required_providers {
    aws ={
      source  = "hashicorp/aws"
      version = ">= 2.46.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "webserver" {
  ami = "ami-064573ac645743ea8"
  instance_type = "t2.micro"
  tags = {
    "Name" = "webserver"
  }
}