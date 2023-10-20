data "aws_security_group" "selected" {
  name = "allow-all"
}

output "o5" {
  value = data.aws_security_group.selected.id
}
