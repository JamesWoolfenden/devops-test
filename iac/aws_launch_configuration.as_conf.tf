resource "aws_launch_configuration" "as_conf" {
  name_prefix                 = "build"
  image_id                    = data.aws_ami.build.id
  instance_type               = "t3.micro"
  associate_public_ip_address = false
  ebs_optimized               = false
  enable_monitoring           = true
  key_name                    = "build2"


  security_groups = [
    aws_security_group.instances.id
  ]

  lifecycle {
    create_before_destroy = true
  }
}
