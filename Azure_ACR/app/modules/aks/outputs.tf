// *** Azure Kubernetes Service Outputs ***
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.azure_kubernetes_cluster.kube_config.0.client_certificate
  sensitive = true
}
output "kube_config" {
  value     = azurerm_kubernetes_cluster.azure_kubernetes_cluster.kube_config_raw
  sensitive = true
}