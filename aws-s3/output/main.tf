terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01893222c83843146"
  subnet_id     = "subnet-090212b6962cda125"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}

# variables
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Batman"
}