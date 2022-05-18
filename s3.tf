resource "aws_s3_bucket" "mydb-985729960198-bucket" {
  bucket = "chibuzo-985729960198-bucket"

  tags = {
    Name        = "chibuzo-985729960198-bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_versioning" "mybucketversion" {
  bucket = aws_s3_bucket.mydb-985729960198-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


