// Define providers
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

// Define region - pull from terraform.tfvars
variable "location" {
  type = string
}

// Define subscription ID - pull from terraform.tfvars
variable "subscription_id" {
  type = string
}

// Setup Azure provider - authenticating with Azure CLI
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
