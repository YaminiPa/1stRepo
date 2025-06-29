


resource "azure_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "East US"
}

resource "azure_storage_account" "storage" {
  name                     = "mystorageaccount"
  resource_group_name      = azure_resource_group.rg.name
  location                 = azure_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}