output "container_registry_name" {
    value = azurerm_container_registry.acr.name
}

output "acr_admin_username" {
  value = azurerm_container_registry.acr.admin_username
}

output "acr_admin_password" {
  value = azurerm_container_registry.acr.admin_password
  sensitive = true
}

# Output to get the scope of ACR
output "acr_scope" {
  value = azurerm_container_registry.acr.id
}