resource "aws_s3_bucket" "mydb-985729960198-bucket" {
  bucket = "dev-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "obj" {
  bucket = aws_s3_bucket.mydb-985729960198-bucket.id
  key    = "dev/"
}

resource "aws_s3_bucket_versioning" "mybucketversion" {
  bucket = aws_s3_bucket.mydb-985729960198-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_object_lock_configuration" "name" {
  bucket = aws_s3_bucket.mydb-985729960198-bucket.id
  object_lock_enabled = "Enabled"
    rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}

