variable "resourcegroup_name" {
  type        = string
  description = "The name of the resource group"
  default     = "tf_rg"
}

variable "location" {
  type        = string
  description = "The region for the deployment"
  default     = "East US"
}


variable "vnet_name" {
  type        = string
  description = "The name of the vnet"
  default     = "tf_vnet"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "the address space of the VNet"
  default     = ["10.13.0.0/16"]
}

variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
  }
}