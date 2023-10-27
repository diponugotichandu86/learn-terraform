terraform {
  backend "s3" {
    bucket = "terraform-486"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

output "hello" {
  value = "Hello World"
}
