output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.main.name
}

output "subnet_prod_name" {
  value = azurerm_subnet.prod.name
}

output "subnet_test_name" {
  value = azurerm_subnet.test.name
}

output "subnet_dev_name" {
  value = azurerm_subnet.dev.name
}

output "subnet_admin_name" {
  value = azurerm_subnet.admin.name
}