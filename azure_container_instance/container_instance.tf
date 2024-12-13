data "azurerm_container_registry" "acr" { 
  name                = "acrqaregistry07" 
  resource_group_name = "rg-qa-group" 
}

resource "azurerm_container_group" "container" {
  name                = var.container_group_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = "aciDnsLabel07"
  os_type             = "Linux"
  restart_policy      = "Always"

    image_registry_credential {
    server = var.login_server
    username = var.registry_username
    password = var.registry_password
  }

  container {
    name    = var.container_name
    image   = var.image

    cpu     = "0.5"
    memory  = "1.5"

    ports {
      port     = var.port
      protocol = "TCP"
    }
  
  }
  tags = { 
    environment = "qa" 
    }
}

resource "azurerm_role_assignment" "example" {
   principal_id         = var.principal_id      
   role_definition_name = "AcrPull" 
   scope                = data.azurerm_container_registry.acr.id 
   principal_type       = "ServicePrincipal"

}