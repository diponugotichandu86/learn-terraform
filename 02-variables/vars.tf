variable "sample" {
  default = 100
}

variable "sample1" {
  default="Welcome"
}

output "sampleoutput1" {
  value = var.sample
}

output "sampleoutput2" {
  value = var.sample1
}

output "sampleoutput3" {
  value = "Value of Sample1 is ${var.sample1}"
}

variable "plain" {
  default = "DevOps"
}

variable "List" {
  default = ["AWS","DevOps","Data Science"]
}

variable "Map" {
  default = {
    DevOps = {
      name = "DevOps"
      time = "7AM"
    }
    AWS = {
      name = "AWS"
      time = "8AM"
    }
  }
}

output "o1" {
  value = var.plain
}
output "o2" {
  value = var.List
}
output "o3" {
  value = var.Map.AWS
}

variable "env" {}

output "o4" {
  value = var.env
}