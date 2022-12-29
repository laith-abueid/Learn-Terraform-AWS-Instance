terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "Laith_server" {
  ami           = "ami-0ceecbb0f30a902a6"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
