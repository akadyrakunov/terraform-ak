resource "aws_s3_bucket" "hello11" {
  bucket_prefix = "kaizen-"
}

resource "aws_s3_bucket" "hello22" {
  bucket = "ak-test-234523"
}

output "bucket" {
  value = aws_s3_bucket.hello22.arn
}

output "bucket2" {
  value = aws_s3_bucket.hello11.arn
}