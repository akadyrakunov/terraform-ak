provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc-cidr_block
}

resource "aws_subnet" "sb1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1-cidr_block
}

resource "aws_subnet" "sb2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2-cidr_block
}

resource "aws_subnet" "sb3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3-cidr_block
}