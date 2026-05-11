terraform {
	required_providers {
		azure_rm = {
			source= "hashicorp/azurerm"
			version= "~3.0"
		}
	}
}

provider "azurerm" {
	features {}
}

resource "azurerm_resource_group" "demo" {
	name= "rg_devops_demo"
	location= "Central India"
}