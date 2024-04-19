variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"
}

variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "app_service_name" {
  type        = string
  description = "App Service name in Azure"
}

variable "keyvault_name" {
  type        = string
  description = "Key Vault name in Azure"
}

variable "secret_name" {
  type        = string
  description = "Key Vault Secret name in Azure"
}

variable "secret_value" {
  type        = string
  description = "Key Vault Secret value in Azure"
  sensitive   = true
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vnet_name" {
  description = "Name of the vnet to create"
  type        = string
  default     = "acctvnet"
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = list(string)
  default     = ["subnet1", "subnet2", "subnet3"]
}

variable "storage_account_name" {
  type        = string
  description = "Storage Account name in Azure"
}

variable "storage_container_name" {
  type        = string
  description = "Storage Container name in Azure"
}

variable "virtual_network_name" {
  type        = string
  description = "Virtual Network name in Azure"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name in Azure"
}
