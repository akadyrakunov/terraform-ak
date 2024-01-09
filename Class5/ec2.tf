resource "aws_instance" "web" {
  ami           = "ami-0005e0cfe09cc9050"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key.key_name

  connection {
    host = element(aws_instance.web[*].public_ip, 0)
    type = "ssh"
    user = "ec2-user"
    private_key = file("~/.ssh/id_rsa")
  }

provisioner "file" {
  source = "./main.tf"
  destination = "./hello.tf"
}
}