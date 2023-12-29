# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami                    = data.aws_ami.ubuntu.id
#   subnet_id              = aws_subnet.sb1.id
#   instance_type          = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.allow_tls.id]
#   key_name               = aws_key_pair.key.key_name
#   user_data              = file("apache.sh")
# }

# output "EC2" {
#   value = aws_instance.web.public_ip
# }

data "aws_ami" "ami_filter" {
  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  most_recent = true
  owners      = ["137112412989"]
}

resource "aws_instance" "web" {
  ami             = data.aws_ami.ami_filter.id
  instance_type   = var.instance_type_t2large
  key_name        = aws_key_pair.key.key_name
  security_groups = [aws_security_group.allow_tls.id]
  subnet_id       = aws_subnet.sb1.id

  tags = {
    Name = "group4-ec2"
  }
  #user_data = file("/home/ec2-user/terraform-ak-2/Homework2/apacheInstall.sh")
}
