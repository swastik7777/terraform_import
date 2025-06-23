module "vpc" {
  source  = "./module/vpc"
  cidr    = var.cidr
  azs     = var.azs
  cidr_block = var.cidr_block 
  enable_nat_gateway = var.enable_nat_gateway
}

module
