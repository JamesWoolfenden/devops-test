
resource "aws_security_group" "instances" {
  description = "build-instances"

  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description      = "outbound"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    },
  ]

  ingress = [
    {
      cidr_blocks = [
        "${module.data.ip}/32",
      ]
      description      = "Allow me"
      from_port        = 3000
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups = [
        aws_security_group.elb.id,
      ]
      self    = false
      to_port = 3000
    }
  ]
  name = "Build Instance"

  tags = var.common_tags

  vpc_id = var.vpc_id

  timeouts {}
}
