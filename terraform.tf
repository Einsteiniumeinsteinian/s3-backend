terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket         = "chibuzo-985729960198-bucket"
    key            = "dev/terraform.tfstate"
    region = "eu-west-3"
    dynamodb_table = "chibuzo-dynamodb"
  }
}

