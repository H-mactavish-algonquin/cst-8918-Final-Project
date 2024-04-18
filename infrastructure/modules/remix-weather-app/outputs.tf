output "acr_name" {
  description = "Name of the Azure Container Registry"
  value       = azurerm_container_registry.acr.name
}

output "test_cluster_name" {
  description = "Name of the AKS cluster in the test environment"
  value       = azurerm_kubernetes_cluster.test_cluster.name
}

output "prod_cluster_name" {
  description = "Name of the AKS cluster in the production environment"
  value       = azurerm_kubernetes_cluster.prod_cluster.name
}

output "test_redis_name" {
  description = "Name of the Redis cache in the test environment"
  value       = azurerm_redis_cache.test_redis.name
}

output "prod_redis_name" {
  description = "Name of the Redis cache in the production environment"
  value       = azurerm_redis_cache.prod_redis.name
}