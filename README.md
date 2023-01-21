# terraform-aws-ec2-instance-infra

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="us-east-1"

```

### Terraform Commands

```
terraform init
terraform plan 
terraform validate
terraform apply -var-file="vars/development.tfvars" --auto-approve
terraform destroy -var-file="vars/development.tfvars" --auto-approve

```
