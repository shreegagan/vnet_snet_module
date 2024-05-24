# resource "azurerm_resource_group" "rg" {
#     name = var.resource_group_name
#     location = var.location
  
# }

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                        = var.azurerm_key_vault
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get",
      "List"
    ]

    secret_permissions = [
      "List",
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]

    storage_permissions = [
      "Get",
    ]
    
  }

}

resource "azurerm_key_vault_secret" "secretkey" {
  key_vault_id = azurerm_key_vault.keyvault.id
  name = var.azurerm_key_vault_secret
  value = var.azurerm_key_vault_value
  
}