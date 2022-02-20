module "resource_group" {
    source = "./modules/resource_groups"
    resource_group_name = var.resource_group_name
    resource_location = var.region_location

}

# module "network_infra" {
#     source = "./modules/network_infra"
#     resource_group_name = module.resource_group.lab-terraform-rg-name
#     resource_group_location = module.resource_group.lab-terraform-rg-location
#     vnet_address_space = var.vnet_cidr
#     pub_sub_1_cidr = var.public_subnet_cidr_blocks[0]
# }

module "web_app_1" {
    source = "./modules/web_app_1"
    resource_group_name = module.resource_group.lab-terraform-rg-name
    resource_group_location = module.resource_group.lab-terraform-rg-location
}