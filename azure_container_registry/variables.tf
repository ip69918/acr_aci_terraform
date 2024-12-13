variable "resource_group_name" {
    description = "The name of resource group"
    type        = string 
}

variable "location" {
    description = "Location for all resources"
    type        =  string 
}

variable "subscription_id" {
    description = "Azure subscription_id"
    type        = string 
}

variable "container_registry" {
    description = "The name of container_registry"
    type        = string 
}