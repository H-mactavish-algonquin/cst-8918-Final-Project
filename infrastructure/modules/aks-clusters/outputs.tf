output "test_cluster_name" {
  description = "Name of the AKS cluster in the test environment"
  value       = azurerm_kubernetes_cluster.test_cluster.name
}

output "prod_cluster_name" {
  description = "Name of the AKS cluster in the production environment"
  value       = azurerm_kubernetes_cluster.prod_cluster.name
}