 module "sportgully_vpc" {
   source = "./provider/aws/vpc/v1"
   cidr_block = "10.0.0.0/16"
   tags = {
      name : "sportgully",
      Author : "Terraform",
      Contact : var.Contact,
      Environment : var.Environment,
   }
}
