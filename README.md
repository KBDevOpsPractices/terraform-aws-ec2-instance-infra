# terraform-aws-ec2-instance-infra

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_REGION="region"

```

### key-pair

```
ssh-keygen -t rsa 

ssh -i id_rsa ubuntu@[pub_ip_address]

```
- Note : ./id_rsa

### Terraform Commands

```
terraform init

terraform fmt

terraform validate
terraform plan -var-file="vars/devl.tfvars" --auto-approve
terraform apply -var-file="vars/devl.tfvars" --auto-approve

terraform destroy -var-file="vars/devl.tfvars" --auto-approve

```
