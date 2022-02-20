variable "vnet_cidr" {
    description = "This is the default CIDR block for vnet"
    type = string
    default = "10.10.10.0/24"
  
}

variable "public_subnet_cidr_blocks" {
    description = "List of public subnet blocks"
    type = list(string)
    default = [
        "10.10.10.0/27",
        "10.10.10.64/27"
    ]
  
}

variable "resource_group_name" {
    description = "The resouce group name you wish to create"
    type = string
    default = "wordpress-docker-lab"
}

variable "region_location" {
    description = "The region location for resources to deploy"
    type = string
    default = "West Europe"
}