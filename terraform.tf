terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
#   backend "s3" {
#     bucket         = "angelo-terraform-state-backend"
#     key            = "terraform.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "terraform_state"
#   }
}