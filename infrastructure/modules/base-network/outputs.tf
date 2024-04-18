output "resource_group_name" {
  description = "Name of the resource group for the base network infrastructure"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_names" {
  description = "Names of the subnets"
  value       = [azurerm_subnet.prod.name, azurerm_subnet.test.name, azurerm_subnet.dev.name, azurerm_subnet.admin.name]
}