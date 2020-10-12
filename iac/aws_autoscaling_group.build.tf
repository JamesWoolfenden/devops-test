resource "aws_autoscaling_group" "build" {
  name                 = "build"
  launch_configuration = aws_launch_configuration.as_conf.name
  max_size             = var.max_size
  min_size             = var.min_size
  availability_zones = [
    "${var.region}a",
    "${var.region}b",
  ]
  load_balancers = [aws_elb.build.id]

  lifecycle {
    ignore_changes = [
      tags, tag
    ]
  }
}
