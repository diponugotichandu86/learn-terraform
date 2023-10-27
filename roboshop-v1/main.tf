module "frontend" {
  source = "./ec2"
  name = "frontend"
}
module "mongodb" {
  source = "./ec2"
  name = "mongodb"
}
module "catalogue" {
  source = "./ec2"
  name = "catalogue"
}
module "redis" {
  source = "./ec2"
  name = "redis"
}
module "user" {
  source = "./ec2"
  name = "user"
}
module "mysql" {
  source = "./ec2"
  name = "mysql"
}
module "shipping" {
  source = "./ec2"
  name = "shipping"
}
module "cart" {
  source = "./ec2"
  name = "cart"
}
module "rabbitmq" {
  source = "./ec2"
  name = "rabbitmq"
}
module "payment" {
  source = "./ec2"
  name = "payment"
}