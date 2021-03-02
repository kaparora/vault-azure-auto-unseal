data "template_file" "vault_setup" {
  template = "${file("${path.module}/setup-vault.tpl")}"

  vars = {
    resource_group_name = "${var.prefix}-rg"
    vault_vm_name       = "${var.prefix}-vault-vm"
    vault_download_url  = "${var.vault_download_url}"
    tenant_id           = "${var.tenant_id}"
    subscription_id     = "${var.subscription_id}"
    client_id           = "${var.client_id}"
    client_secret       = "${var.client_secret}"
    vault_name          = "${azurerm_key_vault.keyvault.name}"
    key_name            = "${azurerm_key_vault_key.generated.name}"
  }
}