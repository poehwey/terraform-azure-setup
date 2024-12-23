resource "azurerm_app_service_plan" "main" {
  name                = "${var.resource_name_prefix}-appplan-${terraform.workspace}"
  location            = local.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = var.app_service_os
  sku {
    tier = "Free"
    size = var.app_service_sku
  }
}

resource "azurerm_app_service" "main" {
  name                = "${var.resource_name_prefix}-app-${terraform.workspace}"
  location            = local.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.main.id

  https_only = true
  site_config {
    min_tls_version = "1.2"
  }
  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
  identity {
    type = "SystemAssigned"
  }
}
