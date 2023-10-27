variable "test" {
  default = "Devops"
}

output "upper" {
  value = upper(var.test)
}