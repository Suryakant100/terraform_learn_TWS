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

resource "aws_instance" "aws_ec2_test" {
        ami = "ami-03f4878755434977f"
        instance_type = "t2.micro"
        tags = {
                Name = "terraform-aws-config"
        }
}


resource "aws_s3_bucket" "my_s3_bucket" {
        bucket = "terraform-surya-demo-config"
        tags = {
                Name = "terraform-surya-demo-config"
                Environment = "Dev"
        }
}


output "ec2_public_ips"{
        value = aws_instance.aws_ec2_test.public_ip

}
