provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
}

resource "aws_instance" "web2" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
}

resource "aws_instance" "web3" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
}