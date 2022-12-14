// *** Network Stack Outputs ***
output "subnet_ids" {
  value = module.subnet.subnet_ids
}
output "resource_group_name" {
  value = module.resource_group.name
}
output "vm_subnet_id" {
  value = module.subnet.subnet_ids[0]
}