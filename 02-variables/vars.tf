variable "sample" {
  default = 100
}

variable "sample1" {
  value="Welcome"
}

output "sampleoutput1" {
  value = var.sample
}

output "sampleoutput2" {
  value = var.sample1
}

output "sampleoutpu3" {
  value = "Value of Sample1 is ${var.sample1}"
}