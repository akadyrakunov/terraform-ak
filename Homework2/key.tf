resource "aws_key_pair" "key" {
  key_name   = "homework-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

#import task
resource "aws_key_pair" "key2" {
  key_name   = "my-laptop-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
#terraform import aws_key_pair.key2 my-laptop-key