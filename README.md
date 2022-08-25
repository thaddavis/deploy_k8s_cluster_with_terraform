# Reference Material
https://github.com/marcel-dempers/docker-development-youtube-series/tree/master/kubernetes/cloud/amazon/terraform

# make startup script executable
chmod +x ./startup.sh

# Run Amazon CLI
docker run -it --rm -v ${PWD}:/work -w /work --entrypoint ./startup.sh amazon/aws-cli:2.0.43

# AWS cli configure
aws configure

# Install Terraform onto the container
https://www.terraform.io/downloads

I install using the "Linux" and "Amazon Linux" options

1) yum install -y yum-utils
2) yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
3) yum -y install terraform

`terraform -v` should work after installing correctly

# Create the terraform scripts

- create `main.tf`
- create `variables.tf`

# Reference links
https://registry.terraform.io/namespaces/terraform-aws-modules
https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest
https://learn.hashicorp.com/collections/terraform/aws-get-started?utm_source=terraform_io_download

# Continue adding terraform code to main.tf and variables.tf
...

# Create outputs.tf file
...

# Continue adding terraform code to main.tf

# Add .git
yum -y install git
git --version

# Run terraform init
terraform init

# Run terraform plan
terraform plan

# Troubleshooting
- Needed to pin the version of the `terraform-aws-modules/vpc/aws` module to 3.14.2
- needed an account with sufficient EKS permissions - https://eksctl.io/usage/minimum-iam-policies/

# deploy the cloud infrastructure using terraform
terraform apply
terraform destroy