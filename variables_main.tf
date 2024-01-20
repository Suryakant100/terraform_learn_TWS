resource "local_file" "surya" {
        filename = var.file_list[0]
        content = var.content_map["content1"]
}


resource "local_file" "devops-var" {
        filename = var.file_list[1]
        content = var.content_map["content2"]
}

output "ec2_output_intance" {
        value = var.aws_ec2_object

}
