#resource "azurerm_resource_group" "rg" {
#name     = var.resource_group_name
# location = var.resource_group_location
#}


# Define the Azure virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Define the Azure subnet within the virtual network
resource "azurerm_subnet" "snet" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = ["10.0.1.0/24"]
}
