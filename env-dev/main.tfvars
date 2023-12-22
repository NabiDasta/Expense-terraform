vpc_cidr_block = "10.10.0.0/16"
env = "dev"
tags = {
  company = "nabi co"
  bu-unit = "finance"
  project_name = "expense"
}

public_subnets = ["10.10.0.0/24", "10.10.1.0/24"]
web_subnets = ["10.10.2.0/24", "10.10.3.0/24"]
app_subnets = ["10.10.4.0/24", "10.10.5.0/24"]
db_subnets = ["10.10.6.0/24", "10.10.7.0/24"]

azs = ["us-east-1a", "us-east-1b"]
account_id = "146677740583"
default_vpc_id = "vpc-0c56350cef2a19c14"
default_route_table_id = "rtb-0e38b6cec484cd8b8"
default_vpc_cidr = "172.31.0.0/16"

rds_allocated_storage = 20
rds_engine = "mysql"
rds_engine_version = "5.7.44"
rds_instance_class  = "db.t3.micro"
sg_cidr = ""


