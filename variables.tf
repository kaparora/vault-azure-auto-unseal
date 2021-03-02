variable "prefix" {
}

variable "location" {
  default = "westeurope"
}

variable "owner" {
}

variable "client_secret" {
  default = ""
}
variable "client_id" {
  default = ""
}

variable "object_id" {
  default = ""
}
variable "subscription_id" {
  default = ""
}

variable "tenant_id" {
  default = ""
}

variable "vault_download_url" {
  default = "https://releases.hashicorp.com/vault/1.6.3/vault_1.6.3_linux_amd64.zip"
}
variable "public_key" {
}
variable "vm_size" {
  default = "Standard_D2s_v3"
}

