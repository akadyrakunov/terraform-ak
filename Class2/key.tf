resource "aws_key_pair" "key" {
  key_name   = "hello"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = local.common_tags
}