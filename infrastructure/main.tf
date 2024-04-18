terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0.0, < 3.0.0" # Specify version constraints
    }
  }
}

provider "azurerm" {
  features {}

}

module "terraform_backend" {
  source = "./modules/terraform-backend"
}

module "base_network" {
  source = "./modules/base-network"
}

module "aks_clusters" {
  source = "./modules/aks-clusters"
}

module "remix_weather_app" {
  source = "./modules/remix-weather-app"
}