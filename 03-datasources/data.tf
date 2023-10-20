data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.medium"
  availability_zone = "us-east-1"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

output "price" {
  value = data.aws_ec2_spot_price.example.id
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

output "o5" {
  value = data.aws_security_group.selected.id
}
