    variable "resource_group_name" {
    type = string
  
}
variable "location" {
    type = string
  
}
variable "virtual_network_name" {
  type        = string
  description = "Virtual Network name in Azure"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name in Azure"
}
