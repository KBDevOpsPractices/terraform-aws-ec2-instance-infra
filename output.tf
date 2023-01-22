output "aws_ec2_instance" {
  value = aws_instance.web-ec2-instance.arn
}

output "ec2-ssh-key" {
  value = aws_key_pair.ec2-ssh-key.key_name
}

output "sg_id" {
  value = aws_security_group.security_group_allow_tls.id
}
