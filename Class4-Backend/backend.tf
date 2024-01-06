terraform {
  backend "s3" {
    bucket = "s3-statefile-class4"
    key    = "virginia/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock-state"
  }
}
