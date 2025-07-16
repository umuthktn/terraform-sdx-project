variable "resource_group_name" {
  description = "Oluşturulacak Resource Group'un adı"
  type        = string
  default     = "sdx-rg"
}

variable "location" {
  description = "Kaynakların oluşturulacağı Azure bölgesi"
  type        = string
  default     = "Sweden Central"
}


variable "vnet_name" {
  description = "Virtual Network adı"
  type        = string
  default     = "sdx-vnet"
}

variable "vnet_cidr" {
  description = "VNet IP aralığı (CIDR)"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Subnet adı"
  type        = string
  default     = "sdx-subnet"
}

variable "subnet_cidr" {
  description = "Subnet IP aralığı (CIDR)"
  type        = string
  default     = "10.0.1.0/24"
}

variable "nsg_name" {
  description = "NSG (Network Security Group) adı"
  type        = string
  default     = "sdx-nsg"
}


variable "public_ip_name" {
  type    = string
  default = "sdx-pip"
}

variable "nic_name" {
  type    = string
  default = "sdx-nic"
}

variable "vm_name" {
  type    = string
  default = "sdx-vm"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "vm_username" {
  type = string
  default = "sdxuser"
}

variable "ssh_public_key" {
  description = "SSH public key for the VM"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDIpC83zcHcaEf7uFZQ8VbEBoQwxn6brlqloHEVnt1AVXKfCiyPosyQRZfHBT2wT9kLkRPaW7dRxUEB5XWFOcpGhaNbbjfek+rcfzC+o4PIici2yrPE7AW5OBik785WCOjj46F6o67XeOQ/bzTduMPI6Oa4Y6kn97wJu8cQYMO3gjvpXyhfF4B4K83ip0zmWwnjYjc9ctPqoBxwqujouLTIFHag4mtZP1wnIG2WVyTS/KMfQlcjFP2IwvUI18yzEEoz0Z7VV/udmoL3VHbSgtd0wz1uZgB957EmXhg9c9zsCdqQPvRI6oeP838+q7rYkvJQbUvaiMJRLgWreJHlTU8h bimsadom\\umut.toprucak@DXUTOPRUCAKPP7G"
}


