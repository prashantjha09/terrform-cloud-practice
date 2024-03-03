terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=4.16.0, <=4.22.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  shared_config_files = ["/Users/prashantjha/.aws/config"]
  shared_credentials_files = ["/Users/prashantjha/.aws/credentials"]
  profile = "learning-account"
}

resource "aws_instance" "myec2" {
    ami = "ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
}