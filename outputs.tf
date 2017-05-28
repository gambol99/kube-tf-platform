
output "compute_sg"              { value = "${aws_security_group.compute.id}" }
output "elb_sg"                  { value = "${aws_security_group.elb.id}" }
output "mgmt_sg"                 { value = "${aws_security_group.mgmt.id}" }
output "nat_route_table"         { value = "${aws_route_table.nat_routes.id}" }
output "nat_sg"                  { value = "${aws_security_group.public.id}" }
output "public_zone"             { value = "${aws_route53_zone.public.id}" }
output "secure_sg"               { value = "${aws_security_group.secure.id}" }
output "vpc_id"                  { value = "${aws_vpc.vpc.id}" }

output "compute_subnets"         { value = "${zipmap(aws_subnet.compute_subnets.*.availability_zone, aws_subnet.compute_subnets.*.id)}" }
output "elb_subnets"             { value = "${zipmap(aws_subnet.elb_subnets.*.availability_zone, aws_subnet.elb_subnets.*.id)}" }
output "mgmt_subnets"            { value = "${zipmap(aws_subnet.mgmt_subnets.*.availability_zone, aws_subnet.mgmt_subnets.*.id)}" }
output "nat_subnets"             { value = "${zipmap(aws_subnet.nat_subnets.*.availability_zone, aws_subnet.nat_subnets.*.id)}" }
output "secure_subnets"          { value = "${zipmap(aws_subnet.secure_subnets.*.availability_zone, aws_subnet.secure_subnets.*.id)}" }
output "compute_cidr"            { value = "${zipmap(aws_subnet.compute_subnets.*.availability_zone, aws_subnet.compute_subnets.*.cidr_block)}" }
output "elb_cidr"                { value = "${zipmap(aws_subnet.elb_subnets.*.availability_zone, aws_subnet.elb_subnets.*.cidr_block)}" }
output "mgmt_cidr"               { value = "${zipmap(aws_subnet.mgmt_subnets.*.availability_zone, aws_subnet.mgmt_subnets.*.cidr_block)}" }
output "nat_cidr"                { value = "${zipmap(aws_subnet.nat_subnets.*.availability_zone, aws_subnet.nat_subnets.*.cidr_block)}" }
output "secure_cidr"             { value = "${zipmap(aws_subnet.secure_subnets.*.availability_zone, aws_subnet.secure_subnets.*.cidr_block)}" }

output "nat_gateway_private_ips" { value = [ "${aws_nat_gateway.gateways.*.private_ip}" ] }
output "nat_gateway_public_ips"  { value = [ "${aws_nat_gateway.gateways.*.public_ip}" ] }
output "public_nameservers"      { value = [ "${aws_route53_zone.public.name_servers}" ] }
output "zone_route_tables"       { value = [ "${aws_route_table.zone_routes.*.id}" ] }
