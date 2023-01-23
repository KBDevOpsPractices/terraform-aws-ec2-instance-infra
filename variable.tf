locals {
  common_tags = {
    component = var.component
    Name      = var.Name
  }
}

variable "component" {
  type    = string
  default = "aws-devops-kb"
}

variable "Name" {
  type    = string
  default = "aws-devops-tf"
}

variable "aws_ami_id" {
  type    = string
  default = "ami-00874d747dde814fa"

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ports" {
  type = list(number)
}

