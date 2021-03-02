data "azurerm_public_ip" "vault_ip" {
  depends_on = [azurerm_virtual_machine.vault_vm]
  name                = "${azurerm_public_ip.vault_ip.name}"
  resource_group_name = "${azurerm_virtual_machine.vault_vm.resource_group_name}"
}




output "vault_ip" {
  value = "${data.azurerm_public_ip.vault_ip.ip_address}"
}
output "vault_addr" {
  value = "http://${data.azurerm_public_ip.vault_ip.ip_address}:8200"
}


output "ssh-addr" {
  value = <<SSH

    Connect to your virtual machine via SSH:

    $ ssh azureuser@${data.azurerm_public_ip.vault_ip.ip_address}

    You can find the vault root token and recovery keys in vault.txt in the root directory


SSH

}
