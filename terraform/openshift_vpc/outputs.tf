output "vpc_id" {
  description = "Output ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  description = "Output IDs for the Public Subnets."
  value = {
    for k, v in aws_subnet.public_subnets : k => v.id
  }
}

output "private_subnet_ids" {
  description = "Output IDs for the Private Subnets."
  value = {
    for k, v in aws_subnet.private_subnets : k => v.id
  }
}