resource "azurerm_resource_group" "main" {
  name     = "${var.resource_name_prefix}-rg-${terraform.workspace}-${lower(replace(local.location, " ", ""))}-01"
  location = local.location
}
