# ssh-key
resource "aws_key_pair" "ec2-ssh-key" {
  key_name   = "devops-aws-ssh-key-tf"
  public_key = file("${path.module}/id_rsa.pub")
  tags       = local.common_tags
}
