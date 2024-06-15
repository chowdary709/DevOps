
resource "aws_instance" "instance" {
  ami                         = local.ami
  instance_type               = local.instance_type

  tags = {
    Name = "${var.tag_name}-instance" # in side a data to declare  a variable
  }
}
