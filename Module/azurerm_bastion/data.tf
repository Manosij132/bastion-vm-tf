data "azurerm_subnet" "subnet" {
  name                 = var.subnet-name
  virtual_network_name = var.vnet-name
  resource_group_name  = var.rg-name
}

data "azurerm_public_ip" "pip" {
  name                = var.pip-name
  resource_group_name = var.rg-name
}