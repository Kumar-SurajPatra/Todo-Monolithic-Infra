module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}
#module "networking"{
#   source = "../../modules/azurerm_networking"
#   depends_on = [ module.rg ]
#   vnets = var.vnets
#}