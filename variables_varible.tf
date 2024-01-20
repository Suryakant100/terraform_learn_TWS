variable "filename" {
        default = "/home/ubuntu/terraform_day01/terraform-veriables/devops-automated.txt"
}

variable "content" {
        default = "This is auto generated from a variable"
}

variable "content_map" {
        type = map
        default = {
                content1 = "This is a cool content 1"
                content2 = "This is a cool content 2"

        }
}

variable "file_list" {
        type = list
        default = ["/home/ubuntu/terraform_day01/terraform-veriables/file1.txt","/home/ubuntu/terraform_day01/terraform-veriables/file2.txt"]
}

variable "aws_ec2_object" {
        type = object({
                name = string
                instances = number
                keys  = list(string)
                ami = string
        })

        default = {
                name = "test_ec2_intance"
                instances = 3
                keys = ["key1.pem","key2.pem"]
                ami = "ubuntu-adgjhdgj"
        }
}
