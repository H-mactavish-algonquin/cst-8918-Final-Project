terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = module.terraform_backend.backend_resource_group_name
    storage_account_name = module.terraform_backend.backend_storage_account_name
    container_name       = module.terraform_backend.backend_container_name
    key                  = "test.tfstate"
  }
}

module "terraform_backend" {
  source = "../../modules/terraform-backend"
}

module "base_network" {
  source = "../../modules/base-network"
}

module "aks_clusters" {
  source = "../../modules/aks-clusters"
}

module "remix_weather_app" {
  source = "../../modules/remix-weather-app"
}