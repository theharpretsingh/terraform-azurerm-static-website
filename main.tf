provider "azurerm" {
  features {}
}

resource "random_string" "myrandom" {
  length  = 4
  special = false
  upper   = false
  numeric = false
}

# azure resource group
resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.rg-location
}

# azure storage account
resource "azurerm_storage_account" "sa" {
  resource_group_name      = azurerm_resource_group.rg.name
  name                     = "${var.sa-name}${random_string.myrandom.id}"
  location                 = azurerm_resource_group.rg.location
  account_replication_type = var.replication-type
  account_tier             = var.account-tier
  access_tier              = var.access-tier
  static_website {
    index_document     = "index.html"
    error_404_document = "error.html"
  }
  
}