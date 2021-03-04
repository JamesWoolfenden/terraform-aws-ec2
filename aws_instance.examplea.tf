
resource "aws_instance" "examplea" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  root_block_device {
    encrypted = true
  }
  user_data = var.user_data
  tags      = var.common_tags
}

