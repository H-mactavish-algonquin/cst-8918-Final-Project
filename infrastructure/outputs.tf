output "backend_resource_group_name" {
  description = "Name of the resource group for the Terraform backend"
  value       = module.terraform_backend.backend_resource_group_name
}

output "backend_storage_account_name" {
  description = "Name of the storage account for the Terraform backend"
  value       = module.terraform_backend.backend_storage_account_name
}

output "backend_container_name" {
  description = "Name of the storage container for the Terraform backend"
  value       = module.terraform_backend.backend_container_name
}

output "acr_name" {
  description = "Name of the Azure Container Registry"
  value       = module.remix_weather_app.acr_name
}

output "test_cluster_name" {
  description = "Name of the AKS cluster in the test environment"
  value       = module.remix_weather_app.test_cluster_name
}

output "prod_cluster_name" {
  description = "Name of the AKS cluster in the production environment"
  value       = module.remix_weather_app.prod_cluster_name
}

output "test_redis_name" {
  description = "Name of the Redis cache in the test environment"
  value       = module.remix_weather_app.test_redis_name
}

output "prod_redis_name" {
  description = "Name of the Redis cache in the production environment"
  value       = module.remix_weather_app.prod_redis_name
}