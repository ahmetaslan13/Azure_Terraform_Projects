// *** Network Stack Outputs ***
output "vnet01_name" {
  value = module.vnet01.name
}
output "vnet01_snets_ids" {
  value = module.vnet01_snets.subnet_ids
}
output "appgw_subnet_id" {
  value = module.vnet01_snets.subnet_ids[0]
}
output "vnet01_snet01_id" {
  value = module.vnet01_snets.subnet_ids[1]
}
output "vnet01_snet1_id" {
  value = module.vnet01_snets.subnet_ids[2]
}

//Vnet 2 
output "vnet2_snets_ids" {
  value = module.vnet2_snets.subnet_ids
}
output "vnet1_snet0_id" {
  value = module.vnet01_snets.subnet_ids[0]
}

//Vnet 3
output "vnet3_snets_ids" {
  value = module.vnet3_snets.subnet_ids
}
output "vnet3_snet0_id" {
  value = module.vnet01_snets.subnet_ids[0]
}

// RG
output "rg_name" {
  value = module.rg_networking.name
}
output "rg_location" {
  value = module.rg_networking.location
}