data "aws_ami" "ami" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"  
}

# how to get default vpc in data source

data "aws_vpc" "default" {
  default = true
}
