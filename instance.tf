# ssh-key
resource "aws_key_pair" "ec2-ssh-key" {
  key_name   = "devops-ec2-ssh-key-tf"
  public_key = file("${path.module}/id_rsa.pub")
  tags = {
    Name = "aws-devops-tf"
  }
}

resource "aws_instance" "web-ec2-instance" {
  ami           = var.aws_ami_id
  instance_type = var.instance_type

  key_name = aws_key_pair.ec2-ssh-key.key_name

  tags = {
    Name = "aws-devops-tf"
  }

}
