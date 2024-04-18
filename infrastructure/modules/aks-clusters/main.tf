resource "azurerm_kubernetes_cluster" "test_cluster" {
  name                = "cst8918-test-cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "cst8918-test"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  kubernetes_version = "1.21.2"
}

resource "azurerm_kubernetes_cluster" "prod_cluster" {
  name                = "cst8918-prod-cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "cst8918-prod"

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_B2s"
    min_count           = 1
    max_count           = 3
    enable_auto_scaling = true
  }

  kubernetes_version = "1.21.2"
}