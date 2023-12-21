data "aws_ami" "amazon_linux" {


#     filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["137112412989"] 
#   most_recent = true
}

output "aim_id" {
  value= aws_ami.amazon_linux.aim_id
}