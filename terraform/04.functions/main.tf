provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type    = list(string)
#   default = ["frontend", "backend", "mysql"]
  default = ["frontend"]
}

resource "aws_instance" "instance" {
  count         = length(var.instance_name) # hear funtions run in length of instance times
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_name[count.index] == "mysql" ? "t3.micro" : "t2.micro"

  # if condition is true then the result is t3.micro .
  # If condition is false then the result is t2.micro.
  # instance name = mysql  pick the t3.micro  ,  otherwise pick the t2.micro.

  tags = {
    Name = "${var.instance_name[count.index]}-${count.index + 1}"
  }
}