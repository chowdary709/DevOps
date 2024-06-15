output "ami_id" {
  value = data.aws_ami.ami.id
}

# how to get default vpc id

output "vpc_id" {
  value = data.aws_vpc.default
}