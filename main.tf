module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  tags = var.tags
  env = var.env
  app_subnets = var.app_subnets
  db_subnets = var.db_subnets
  public_subnets = var.public_subnets
  web_subnets = var.web_subnets
  azs = var.azs
  account_id = var.account_id
  default_vpc_id = var.default_vpc_id
  default_route_table_id = var.default_route_table_id
  default_vpc_cidr = var.default_vpc_cidr
}

module "rds" {
  source = "./modules/rds"
  rds_allocated_storage = var.rds_allocated_storage
  rds_engine = var.rds_engine
  rds_engine_version = var.rds_engine_version
  rds_instance_class = var.rds_instance_class
  env = var.env
  tags = var.tags
  subnets = module.vpc.db_subnets
  vpc_id = module.vpc.vpc_id


}

