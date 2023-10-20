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