
output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.privatesubnet[*].id
}
#aws_subnet.privatesubnet[0]