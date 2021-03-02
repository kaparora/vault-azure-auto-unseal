This Terraform code deploys single  node VAULT  with Azure KeyVault auto unseal

Steps:
1. Copy the terraform.tfvars.example to terraform.tfvars
2. update the parameters
3. Run terraform plan
4. Run terraform apply

You can change vault version by using the right vault_download_url
Definately add the public_key to be able to ssh to the VM