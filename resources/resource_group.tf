resource "azurerm_resource_group" "rg" {
  name     = "quetstroey-rg-${var.resources.environment}-${replace(var.resources.location, " ", "")}-01"
  location = var.resources.location
}
