variable "test" {
  default = ["Devops","Linux"]
}

output "upper" {
  value = upper(var.test) - length(var.test)
}