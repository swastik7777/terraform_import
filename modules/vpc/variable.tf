
variable "cidr" {
  description = "VPC CIDR block"
  type        = string
}
variable "azs" {
  description = "List of AZs"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Whether to create NAT Gateways"
  type        = bool
  default     = true
}
variable "cidr_block" {
  description = "sunet CIDR block"
  type        = string
}
