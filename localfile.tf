resource "local_file" "devOps" {
        filename= "/home/ubuntu/terraform_day01/terraform-local/devops_autometed.txt"
        content= "I wnat to be a devOps Engineer who knows Terraform"
}

resource "random_string" "rand-str" {
        length = 16
        special = true
        override_special = "!#$%*-_=+&[]{}<>:?"
}

output "rand-str" {
        value = random_string.rand-str[*].result
}
