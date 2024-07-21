resource "azurerm_resource_group" "tf_rg" {
  name     = var.resourcegroup_name
  location = var.location
}

resource "azurerm_virtual_network" "tf_vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.tf_rg.location
  resource_group_name = azurerm_resource_group.tf_rg.name
}

resource "azurerm_subnet" "tf_subnet" {
  for_each = var.subnets
  resource_group_name  = var.resourcegroup_name
  virtual_network_name = azurerm_virtual_network.tf_vnet.name
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefixes"]
}