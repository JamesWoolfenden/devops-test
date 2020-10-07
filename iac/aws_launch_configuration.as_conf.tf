resource "aws_launch_configuration" "as_conf" {
  name                        = "build"
  image_id                    = var.ami_id
  instance_type               = "t3.micro"
  associate_public_ip_address = false
  ebs_optimized               = false
  enable_monitoring           = false
  security_groups = [
    aws_security_group.instances.id
  ]
}
