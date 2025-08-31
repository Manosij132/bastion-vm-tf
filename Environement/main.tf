module "rg" {
  source   = "../Module/azurerm_resource_grp"
  rg-name  = var.rg_name
  location = var.location
}
module "vnet" {
  source     = "../Module/azurerm_vnet"
  depends_on = [module.rg]
  vnet-name  = var.vnet_name
  location   = var.location
  rg-name    = var.rg_name
}
module "subnet" {
  source         = "../Module/azurerm_subnet"
  depends_on     = [module.vnet]
  for_each       = var.subnet_map
  subnet-name    = each.value.subnet-name
  rg-name        = each.value.rg-name
  vnet-name      = each.value.vnet-name
  address-prefix = each.value.address-prefix
}
module "pip" {
  source     = "../Module/azurerm_pip"
  depends_on = [module.rg]
  pip-name   = var.pip_name
  rg-name    = var.rg_name
  location   = var.location
}
module "vm" {
  source      = "../Module/azurerm_vm"
  depends_on  = [module.subnet]
  nic-name    = var.nic_name
  location    = var.location
  rg-name     = var.rg_name
  vm-name     = var.vm_name
  subnet-name = var.subnet_map["subnet1"].subnet-name
  vnet-name   = var.vnet_name
}
module "bastion" {
  source       = "../Module/azurerm_bastion"
  depends_on   = [module.pip, module.subnet]
  bastion-name = var.bastion_name
  location     = var.location
  rg-name      = var.rg_name
  subnet-name  = var.subnet_map["subnet2"].subnet-name
  vnet-name    = var.vnet_name
  pip-name     = var.pip_name
}

