resource "aws_elb" "build" {
  name = "build"
  availability_zones = [
    "${var.region}a",
    "${var.region}b",
  "${var.region}c"]

  listener {
    instance_port     = 3000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  security_groups = [
    aws_security_group.elb.id
  ]

  health_check {
    healthy_threshold   = 10
    unhealthy_threshold = 2
    timeout             = 5
    target              = "TCP:3000"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = 60
  connection_draining         = true
  connection_draining_timeout = 300

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
