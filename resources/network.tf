resource "azurerm_virtual_network" "vnet" {
  name                = "quetstroey-vnet-${var.resources.environment}-${replace(var.resources.location, " ", "")}-01"
  address_space       = ["172.16.0.0/16"]
  location            = var.resources.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "quetstroey-subnet-${var.resources.environment}-${replace(var.resources.location, " ", "")}-01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.resources.subnet_cidr]
}
