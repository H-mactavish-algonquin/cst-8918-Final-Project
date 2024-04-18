resource "azurerm_resource_group" "backend_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "backend_storage_account" {
  name                     = "cst8918terraformbackend"
  resource_group_name      = azurerm_resource_group.backend_rg.name
  location                 = azurerm_resource_group.backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "backend_container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.backend_storage_account.name
  container_access_type = "private"
}