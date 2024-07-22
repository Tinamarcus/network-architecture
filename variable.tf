variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "example-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "example-subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  type        = string
  default     = "example-appgw"
}

variable "app_gateway_sku" {
  description = "SKU of the Application Gateway"
  type = object({
    name     = string
    tier     = string
    capacity = number
  })
  default = {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }
}

variable "apim_name" {
  description = "Name of the API Management service"
  type        = string
  default     = "example-apim"
}

variable "apim_publisher_name" {
  description = "Publisher name for API Management"
  type        = string
  default     = "MyCompany"
}

variable "apim_publisher_email" {
  description = "Publisher email for API Management"
  type        = string
  default     = "admin@mycompany.com"
}

variable "apim_sku_name" {
  description = "SKU name for API Management"
  type        = string
  default     = "Consumption_0"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "examplestorageaccount"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "example-appserviceplan"
}

variable "function_app_name" {
  description = "Name of the Function App"
  type        = string
  default     = "example-funcapp"
}