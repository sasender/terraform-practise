resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket-ggff"
  #acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

