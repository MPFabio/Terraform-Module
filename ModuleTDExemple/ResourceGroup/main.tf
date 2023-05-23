resource "azurerm_resource_group" "fabioRG" {
  name     = "${var.base_name}RG"
  location = var.location
}
