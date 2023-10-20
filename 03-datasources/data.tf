data "aws_security_group" "selected" {
  name = "allow-all"
}

output "o5" {
  value = data.aws_security_group.selected.id
}

data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

output "o6" {
  value = data.aws_ami.example.creation_date
}

provider "aws" {
  region = "us-east-1"
}
