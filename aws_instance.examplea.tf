
resource "aws_instance" "examplea" {
  # checkov:skip=CKV2_AWS_17: ADD REASON
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  monitoring    = true
  ebs_optimized = true
  root_block_device {
    encrypted = true
  }
  user_data = var.user_data
  metadata_options {
    http_tokens = "required"
  }

  tags = var.common_tags
}
