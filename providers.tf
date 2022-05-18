provider "aws" {
  access_key = var.accesskeys["accessKey"]
  secret_key = var.accesskeys["secretKey"]
    region = "eu-west-3"
}