resource "aws_security_group" "elb" {
  description = "for elb"
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = "Allow All"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
  }]
  timeouts {}
  ingress = [
    {
      cidr_blocks = [
        "${module.data.ip}/32",
      ]
      description      = "For testing"
      from_port        = 80
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 80
    },
  ]
  name = "build-elb"

  tags = var.common_tags
  vpc_id = var.vpc_id
}
