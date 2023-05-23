module "ResourceGroup" {
  source = "/home/fabio/Terraform/ModuleExemple/ResourceGroup"
  base_name = "FabioTerraform"
  location = "francecentral"
}

module "StorageAccount" {
  source = "/home/fabio/Terraform/ModuleExemple/StorageAccount"
  base_name = "FabioTerraform"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = "francecentral"
}
