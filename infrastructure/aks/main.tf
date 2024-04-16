provider "azurerm" {
  version = "~> 2.46.0"
  features {}
}

resource "azurerm_resource_group" "prod" {
  name     = "rg-prod-aks"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "prod" {
  name                = "aks-prod"
  location            = azurerm_resource_group.prod.location
  resource_group_name = azurerm_resource_group.prod.name
  dns_prefix          = "aks-prod"
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name           = "default"
    node_count     = var.min_node_count
    vm_size        = var.vm_size
    max_count      = var.max_node_count
    enable_auto_scaling = true
  }

  identity {
    type = "SystemAssigned"
  }
}