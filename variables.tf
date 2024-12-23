variable "environment" {
  description = "Deployment environment (dev or prod)"
  type        = string
}

variable "resource_name_prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "quetstroey"
}

variable "subnet_cidr" {
  description = "CIDR block for subnets"
  type        = map(string)
  default     = {
    dev  = "172.16.30.0/24"
    prod = "172.16.35.0/24"
  }
}

variable "app_service_sku" {
  description = "App Service Plan SKU"
  type        = string
  default     = "F1"
}

variable "app_service_os" {
  description = "App Service OS"
  type        = string
  default     = "Linux"
}

variable "dotnet_version" {
  description = "DotNet runtime version"
  type        = string
  default     = "dotnet|8.0"
}
