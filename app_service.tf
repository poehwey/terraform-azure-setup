resource "azurerm_service_plan" "service_plan" {
  name                = "${var.project_prefix}-asp-${local.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  sku_name = "B1" # Replace with appropriate SKU
  os_type  = "Linux" # Specify the operating system
}

resource "azurerm_linux_web_app" "web_app" {
  name                = "${var.project_prefix}-webapp-${local.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {
    # Additional configurations (if needed) can go here
  }
}
