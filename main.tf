 resource "aws_security_group" "main" {
 name = "${var.name}"
 description = "${var.description}"
 vpc_id = "${var.vpc_id}"
 
 dynamic "ingress" {
 for_each = "${var.ingress_rules}"
 
 content{
 from_port = "${ingress.value.from}"
 to_port = "${var.value.to}"
 protocol = "${ingress.value.protocol}"
 cidr_blocks = "${ingress.value.cidr}"
 
  }
 }
