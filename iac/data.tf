data "aws_ami" "build" {

  most_recent      = true
  owners           = ["self"]


  filter {
    name   = "description"
    values = ["Ubuntu AMI"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_vpc" "default" {
  default = true
}
