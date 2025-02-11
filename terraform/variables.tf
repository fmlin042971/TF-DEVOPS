variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "example-rg042971"
}

variable "location" {
  description = "The location of the resources"
  default     = "centralus"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "fasa042971"
}

variable "function_app_name" {
  description = "The name of the Function App"
  default     = "fa042971"
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  default     = "example-app-service-plan"
}