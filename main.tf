variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group will be created"
  type        = string
}



resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}