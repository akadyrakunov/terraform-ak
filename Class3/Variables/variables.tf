variable "region" {
  type = string
  description = "Provide region"
  default = "us-east-1"
}

variable "vpc-cidr_block" {
  type = string
  description = "Provide cidr_block"
  default = "10.0.0.0/16"
}

variable "subnet1-cidr_block" {
  type = string
  description = "Provide cidr_block"
  default = "10.0.1.0/24"
}

variable "subnet2-cidr_block" {
  type = string
  description = "Provide cidr_block"
  default = "10.0.2.0/24"
}

variable "subnet3-cidr_block" {
  type = string
  description = "Provide cidr_block"
  default = "10.0.3.0/24"
}

variable "instance_type" {
  type = string
  description = "Provide Instane type"
  default = "t2.micro"
}