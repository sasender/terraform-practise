resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket-ggff"
  #acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
 #creating multiple buckets ;
 variable "s3_bucket_name" {
  type    = "list"
  default = ["prod_bucket", "stage-bucket", "qa_bucket"]
}

resource "aws_s3_bucket" "henrys_bucket" {
  count         = "${length(var.s3_bucket_name)}"
  bucket        = "${var.s3_bucket_name[count.index]}"
  acl           = "private"
  force_destroy = "true"
}
