variable "vpc_cidr_block" {
  description = "VPC CIDR Block."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets."
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_private_subnets" {
  description = "VPC Private Subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication."
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs. Not recommended for production setup."
  type        = bool
  default     = true
}





