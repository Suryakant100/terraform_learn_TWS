terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-south-1"
}

# Local variable #

locals {
        instance_names = {"surya":"ami-03f4878755434977f","kant":"ami-0c84181f02b974bc3","Kumar":"ami-03f4878755434977f"}
}

resource "aws_instance" "my_ec2_intances" {
        for_each = local.instance_names
        ami = each.value
        instance_type = "t2.micro"
        tags = {
                Name = each.key
        }
}
