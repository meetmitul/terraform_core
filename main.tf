# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}

  subscription_id = var.subscriptionid
}

module "network" {
  source = "./modules/network"
  resourcegroupname = var.resource_group_name
  location = var.location
}