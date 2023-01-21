resource "aws_instance" "ec2-instance" {
  ami           = var.aws_ami_id
  instance_type = var.instance_type

  tags = {
    Name = "devops-tf"
  }

}
