locals {
  ami                         = data.aws_ami.ami.id
  instance_type               = var.instance_name == "Mongodb" ? "t3.micro" : "t2.micro"
}