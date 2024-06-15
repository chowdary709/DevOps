variable "instance_name" {
  type = map(string)
  default = {
    web     = "t2.micro"
    # backend = "t2.micro"
    # mysql   = "t3.micro"
    # key    = value   
  }
}

data "aws_ami" "ami" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"  
}

resource "aws_instance" "instance" {
  for_each      = var.instance_name
  ami           = data.aws_ami.ami.id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}

# route53 records

resource "aws_route53_record" "record" {
  for_each = aws_instance.instance
  name    = "${each.key}.chowdary.cloud"
  type    = "A"
  zone_id = "Z0013695SMHQDK42GJB1"
  ttl     = 300
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}


