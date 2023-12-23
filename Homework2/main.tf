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
  ami = data.aws_ami.ami_filter.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.homework_sg.id]
  key_name               = aws_key_pair.key.key_name
  tags = {
    Name = "Homework-ec2"
  }
  user_data = file("/home/ec2-user/terraform-ak-2/Homework2/apacheInstall.sh")
}

#Import task
resource "aws_instance" "import_ec2" {
  #id                     = "i-08ee7586f33b0a731"
  ami                    = "ami-079db87dc4c10ac91"
  instance_type          = "t2.micro"
  key_name               = "my-laptop-key" #aws_key_pair.key2.key_name
  vpc_security_group_ids = ["sg-01753d1b084d1d105"] #aws_security_group.sg_import.id
  tags = {
    Name = "TestImport"
  }
}
#terraform import aws_instance.import_ec2 i-08ee7586f33b0a731