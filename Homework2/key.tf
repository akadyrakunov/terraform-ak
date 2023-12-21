resource "aws_key_pair" "key" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output "key" {
  value = aws_key_pair.key.public_key
}