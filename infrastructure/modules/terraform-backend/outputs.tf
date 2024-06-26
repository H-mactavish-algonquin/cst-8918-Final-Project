output "backend_resource_group_name" {
  value = azurerm_resource_group.backend_rg.name
}

output "backend_storage_account_name" {
  value = azurerm_storage_account.backend_storage_account.name
}

output "backend_container_name" {
  value = azurerm_storage_container.backend_container.name
}