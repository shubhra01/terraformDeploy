# Deployment Config

resourcegroup_name = "tf_rg"

location = "East US"


vnet_name = "tf_vnet"

vnet_address_space = ["10.13.0.0/16"]

subnets = {
  Subnet_1 = {
    name             = "subnet_1"
    address_prefixes = ["10.13.1.0/24"]
  }
  Subnet_2 = {
    name             = "subnet_2"
    address_prefixes = ["10.13.2.0/24"]
  }
}