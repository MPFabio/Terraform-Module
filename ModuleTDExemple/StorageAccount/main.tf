resource "azurerm_storage_account" "storageAccount" {
  name = "${lower(var.base_name)}${random_string.random.result}"
  resource_group_name = var.resource_group_name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "GRS"
}

resource "random_string" "random" {
  length = 6
  lower = true
  upper = false
  special = false
}
