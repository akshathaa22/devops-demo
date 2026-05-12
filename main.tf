terraform {
	required_providers {
		azurerm = {
			source= "hashicorp/azurerm"
			version= "~> 3.0"
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

resource "azurerm_storage_account" "demo" {
	name                     = "akshustr12345"
	resource_group_name      = azurerm_resource_group.demo.name
	location                 = azurerm_resource_group.demo.location
	account_tier             = "Standard"
	account_replication_type = "LRS"
}