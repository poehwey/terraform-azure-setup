output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.rg.name
}

output "app_service_url" {
  description = "URL of the App Service"
  value = azurerm_linux_web_app.web_app.name
}
