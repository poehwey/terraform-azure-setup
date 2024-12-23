resource "azurerm_resource_group" "rg" {
  name     = "${var.project_prefix}-rg-${local.environment}-${lower(replace(var.location, " ", ""))}-01"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.project_prefix}-vnet-${local.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.project_prefix}-subnet-${local.environment}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_cidr[local.environment]]
}
