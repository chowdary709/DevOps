variable "instance_name" {
  type = string
  default = Mongodb
}

resource "aws_instance" "instance" {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_name == "Mongodb" ? "t3.micro" : "t2.micro"

  tags = {
    Name = "${var.tag_name}-instance" # in side a data to declare  a variable
  }
}
