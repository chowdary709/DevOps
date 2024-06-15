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