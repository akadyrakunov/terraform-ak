resource "aws_s3_bucket" "bucket1" {
  bucket = "ak-test-1111"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "ak-test-222"
}

# import {
#   to = aws_s3_bucket.bucket2
#   id = "ak-test-222"
# }