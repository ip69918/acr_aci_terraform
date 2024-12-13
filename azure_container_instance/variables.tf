variable "resource_group_name" {
    type        = string
    description = "the resource group name."
}

variable "resource_group_location" {
    type        = string
    description = "Location for all resources."
}

variable "container_group_name" {
    type        = string 
    description = "The name of the container group."
}

variable "container_name" {
    type        = string
    description = "The name of container" 
}

variable "port" {
    type        = string
    description = "Port to open on the container and the public IP address."  
  
}

variable "registry_username" {
    type        = string
    description = "The registry username(service-principal-id)"
  
}

variable "registry_password" {
    type        = string
    description = "The registry password (service-principal-password)" 
  
}

variable "container_registry_name" {
    type          = string
    description = "The name of azure container registry" 
  
}

variable "subscription_id" {
    type        = string
    description = "Azure subscription_id" 
}

variable "image" {
    type        = string
    description = "The image name and tag" 
  
}

variable "principal_id" {
    type            = string
    description = "principal id" 
  
}

variable "login_server" {
    type           = string
    description = "The login server" 
  
}