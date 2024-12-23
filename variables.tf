variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "North Europe"
}

variable "app_service_sku" {
  description = "SKU for the App Service Plan"
  type        = string
  default     = "F1"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = map(string)
  default = {
    development = "172.16.30.0/24"
    production  = "172.16.35.0/24"
  }
}

variable "project_prefix" {
  description = "Prefix for all resource names"
  type        = string
  default     = "quetstroey"
}
