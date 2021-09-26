output "main_vpc_id" {
  value = module.vpc.main_vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "default_security_group_id" {
  value = module.security_group.default_security_group_id
}

output "www_security_group_id" {
  value = module.security_group.www_security_group_id
}

output "private_access_security_group_id" {
  value = module.security_group.private_access_security_group_id
}
