resource "aws_autoscaling_group" "build" {
  name                 = "build"
  launch_configuration = aws_launch_configuration.as_conf.name
  max_size             = 2
  min_size             = 2
availability_zones        = [
            "eu-west-2a",
            "eu-west-2b",
        ]
  load_balancers = [aws_elb.build.id]

  lifecycle {
    ignore_changes = [
      tags,tag
    ]
  }
}
