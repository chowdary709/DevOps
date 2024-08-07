provider "aws" {
  region = "us-east-1"
}

variable "instance_name" {
  type    = list(string)
#   default = ["frontend", "backend", "mysql"]
  default = ["frontend"]
}

resource "aws_instance" "instance" {
  count         = 3 // hear loop it will rin 3 times 
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_name[count.index] == "mysql" ? "t3.micro" : "t2.micro"

  # if condition is true then the result is t3.micro .
  # If condition is false then the result is t2.micro.
  # instance name = mysql  pick the t3.micro  ,  otherwise pick the t2.micro.

  tags = {
    Name = "${var.instance_name[count.index]}-${count.index + 1}"
  }
}




resource "aws_route53_record" "record" {
  count   = length(var.instance_name)
  name    = "${var.instance_name[count.index]}.chowdary.cloud"
  type    = "A"
  zone_id = "Z0013695SMHQDK42GJB1"
  ttl     = 300
  records = [aws_instance.instance[count.index] == "web" ? aws_instance.instance[count.index].public_ip : aws_instance.instance[count.index].private_ip]
}
