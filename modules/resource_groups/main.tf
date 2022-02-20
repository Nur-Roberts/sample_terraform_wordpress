resource "azurerm_resource_group" "lab-terraform" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_location}"
}