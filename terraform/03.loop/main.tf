provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type    = list(string)
  default = ["frontend", "backend", "mysql"]
}

resource "aws_instance" "instance" {
  count         = length(var.instance_name)
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_name == "mysql" ? "t3.micro" : "t2.micro"

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}


