variable "instance_name" {
  type = string
  default = Mongodb
}

variable "tag_name" {
  type = map
  default = {
    name        = "ewb"
    project     = "roboshop"
    component   = "web"
    environment = "dev"
    terraform   = true // men this instance will create in terraform
  }
}

resource "aws_instance" "instance" {
  ami                         = local.ami
  instance_type               = local.instance_type

  tags = {
    Name = "${var.tag_name}-instance" # in side a data to declare  a variable
  }
}
