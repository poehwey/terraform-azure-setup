resource "azurerm_app_service_plan" "asp" {
  name                = "quetstroey-asp-${var.resources.environment}-${replace(var.resources.location, " ", "")}-01"
  location            = var.resources.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"

  sku {
    tier = "Free"
    size = var.resources.app_service_plan_sku
  }
}

resource "azurerm_app_service" "web_app" {
  name                = var.resources.app_service_name
  location            = var.resources.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    dotnet_framework_version = var.resources.app_service_runtime
    ftps_state               = "Disabled"
  }

  https_only          = true
  minimum_tls_version = "1.2"
}
