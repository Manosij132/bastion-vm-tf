rg_name   = "rg-mano-bastion-vm"
location  = "West Europe"
vnet_name = "vnet-101"
subnet_map = {
  subnet1 = {
    subnet-name    = "subnet-vm"
    rg-name        = "rg-mano-bastion-vm"
    vnet-name      = "vnet-101"
    address-prefix = ["10.0.0.0/24"]
  }
  subnet2 = {
    subnet-name    = "AzureBastionSubnet"
    rg-name        = "rg-mano-bastion-vm"
    vnet-name      = "vnet-101"
    address-prefix = ["10.0.1.0/24"]
  }
}
pip_name     = "pip-bastion"
nic_name     = "nicforvm"
bastion_name = "bastion-vm"
vm_name      = "vm007"
