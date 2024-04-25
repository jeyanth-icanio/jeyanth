terraform {
  required_version = ">=1.0"

  required_providers {
    # azapi = {
    #   source  = "azure/azapi"
    #   version = "~>1.5"
    # }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}
  # backend "remote" {
	# 	hostname = "app.terraform.io"
	# 	organization = "CloudQuickLabs"

	# 	workspaces {
	# 		name = "AzureAKSLabs"
	# 	}
	# }


provider "azurerm" {
  features {}
}
