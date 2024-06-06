variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  type    = string
  default = "subnet-0804bbb270a178237"
}

variable "sg_id" {
  type    = string
  default = "sg-0b792d7d432d8d378"
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

variable "cidr_blocks" {
  type    = list
  default = ["0.0.0.0/0"]
}
variable "inbound_from_port" {
  type    = number
  default = 0
}