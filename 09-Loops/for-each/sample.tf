data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "web" {
  for_each = var.instance
  ami           = data.aws_ami.example.id
  instance_type = each.value["instance_type"]
  tags = {
    Name = each.key
  }
}

variable "instance" {
  default = {
    frontend = {
      name = "frontend"
    }
    catalogue = {
      name = "catalogue"
      instance_type = "t3.nano"
    }
    cart = {
      name = "cart"
      instance_type = "t3.nano"
    }
  }
}