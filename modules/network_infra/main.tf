resource "azurerm_virtual_network" "lab-terraform-network" {
  name                = "lab-terraform-network"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_lcoation
  address_space       = ["${var.vnet_address_space}"]
  subnet {
    address_prefix = "${var.pub_sub_1_cidr}"
    name = "pub-sub-1"
  }
}