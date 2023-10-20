data "aws_security_group" "selected" {
  name = "allow-all"
}

output "o5" {
  value = data.aws_security_group.selected.id
}

data "aws_ami" "example" {
  owners = [" 973714476881"]
  most_recent      = true
  name_regex       = "centos-8-devops-practice"
}

output "o6" {
  value = data.aws_ami.example.id
}

