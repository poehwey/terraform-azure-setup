resource "azurerm_virtual_network" "main" {
  name                = "${var.resource_name_prefix}-vnet-${terraform.workspace}"
  location            = local.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "main" {
  name                 = "${var.resource_name_prefix}-subnet-${terraform.workspace}"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.subnet_cidr[var.environment]]
}
