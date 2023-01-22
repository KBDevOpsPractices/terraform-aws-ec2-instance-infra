# ssh-key
resource "aws_key_pair" "ec2-ssh-key" {
  key_name   = "devops-ec2-ssh-key-tf"
  public_key = file("${path.module}/id_rsa.pub")
  tags = {
    Name = "aws-devops-tf"
  }
}

resource "aws_security_group" "security_group_allow_tls" {
  name        = "security_group_allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22, 80, 443]
    iterator = port
    content {
      description      = "TLS from VPC"
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]

    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

resource "aws_instance" "web-ec2-instance" {
  ami                    = var.aws_ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2-ssh-key.key_name
  vpc_security_group_ids = [aws_security_group.security_group_allow_tls.id]

  tags = {
    Name = "aws-devops-tf"
  }

}
