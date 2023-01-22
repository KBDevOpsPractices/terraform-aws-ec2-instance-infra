resource "aws_instance" "web-ec2-instance" {
  ami                    = var.aws_ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2-ssh-key.key_name
  vpc_security_group_ids = [aws_security_group.security_group_allow_tls.id]
  user_data              = file("${path.module}/user-data.sh")
  tags = {
    Name = "aws-devops-tf"
  }

}
