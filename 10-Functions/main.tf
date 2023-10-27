variable "test" {
  default = "Devops"
}

output "upper" {
  value = upper(var.test)
}

variable "class" {
  default = {
    devops = {
      name = "devops"
      topics = ["Jenkins","Docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "dev_class" {
  value = var.class["devops"]["topics"]
}

output "aws_class" {
  value = var.class["aws"]["topics"]
}