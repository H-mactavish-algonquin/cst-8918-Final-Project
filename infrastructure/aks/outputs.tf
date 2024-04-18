output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.prod.name
}

output "kubernetes_cluster_host" {
  value = azurerm_kubernetes_cluster.prod.kube_config.0.host
}

output "kubernetes_cluster_username" {
  value = azurerm_kubernetes_cluster.prod.kube_config.0.username
}

output "kubernetes_cluster_password" {
  value = azurerm_kubernetes_cluster.prod.kube_config.0.password
}

output "kubernetes_client_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.prod.kube_config.0.client_certificate)
}

output "kubernetes_client_key" {
  value = base64decode(azurerm_kubernetes_cluster.prod.kube_config.0.client_key)
}

output "kubernetes_cluster_ca_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.prod.kube_config.0.cluster_ca_certificate)
}