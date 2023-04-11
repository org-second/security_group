 module "sportgully_rds_security_group" {
   source = "./security_group"
   name = "sportgully_security_group"
   vpc_id = module.sportgully_vpc.vpc_id
   description = "Private connectivity to RDS DBs"
   ingress_rules = [
    {
      from = 3306
      to = 3306
      protocol = "TCP"
      cidr_block = "10.0.0.0/16"
    } 
   ]  
   
