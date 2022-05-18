resource "aws_dynamodb_table" "mydbtable" {
  name           = "chibuzo-dynamodb"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "chibuzo dynamo db"
  }
}