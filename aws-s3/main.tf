resource "aws_s3_bucket" "onebucket" {
  bucket = "sasender"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name        = "sasender"
    Environment = "Test"
  }
}
