provider "azurerm" {
  version = "~> 2.46.0"
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-test-aks"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "test" {
  name                = "aks-test"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  dns_prefix          = "aks-test"
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}