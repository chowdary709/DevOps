resource "aws_instance" "instance" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids      = var.subnet_id # normal variables

  tags = {
    Name = "${var.tag_name}-instance" # in side a data to declare  a variable
  }
}


# data inside declare a variable to represent
# dual quotation dollar curly braces to represent "${}"
#   eg:-    "${var.tag_name}-instance""