variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "environment" {
  description = "Environment name (dev or prod)"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "app_service_name" {
  description = "Name of the App Service"
  type        = string
}

variable "app_service_plan_sku" {
  description = "SKU for the App Service plan"
  default     = "F1"
}

variable "app_service_runtime" {
  description = "Runtime for the App Service"
  default     = "DOTNET|8.0"
}
