variable "location" {
  description = "The location where the resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "dockervm-vnet"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
variable "subnet_name" {
  description = "The name of the subnet"
  type = string
}
variable "subnet_address_space" {
  description = "The subnet address for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}

variable "nsg_name" {
  description = "The name of the network security group"
  type        = string
}

variable "security_rules" {
  description = "List of security rules"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  
}

variable "public_ip_name" {
  description = "The name of public ip"
  type = string
}

variable "nic_name" {
  description = "The name of the network interface"
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_public_key_path" {
  description = "The path to the admin public key file"
  type        = string
}

variable "os_disk_caching" {
  description = "The caching setting for the OS disk"
  type        = string
}

variable "os_disk_storage_account_type" {
  description = "The storage account type for the OS disk"
  type        = string
}

variable "image_publisher" {
  description = "The publisher of the source image"
  type        = string
}

variable "image_offer" {
  description = "The offer of the source image"
  type        = string
}

variable "image_sku" {
  description = "The SKU of the source image"
  type        = string
}

variable "image_version" {
  description = "The version of the source image"
  type        = string
}
