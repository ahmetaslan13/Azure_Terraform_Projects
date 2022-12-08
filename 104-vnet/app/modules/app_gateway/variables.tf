// *** Azure Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
/// *** 
// Locals
variable "vnet_name" {
  description = ""
  type        = any
}
variable "app_gateway_name" {
  description = ""
  type        = any
}
//SKU
variable "sku_name" {
  description = ""
  type        = any
}
variable "sku_capacity" {
  description = ""
  type        = any
}
variable "sku_tier" {
  description = ""
  type        = any
}
//IP Config
variable "gateway_ip_configuration_name" {
  description = ""
  type        = any
}
variable "gateway_ip_configuration_subnet_id" {
  description = ""
  type        = any
}
//Front 
variable "frontend_port" {
  description = ""
  type        = any
}
//Front 
variable "frontend_ip_configuration_pip_id" {
  description = ""
  type        = any
}
//Backend HTTP Settings
variable "backend_http_settings_cookie_based_affinity" {
  description = ""
  type        = any
}
variable "backend_http_settings_path" {
  description = ""
  type        = any
}
variable "backend_http_settings_port" {
  description = ""
  type        = any
}
variable "backend_http_settings_protocol" {
  description = ""
  type        = any
}
variable "backend_http_settings_request_timeout" {
  description = ""
  type        = any
}
//http_listener
variable "http_listener_protocol" {
  description = ""
  type        = any
}
//request_routing_rule
variable "request_routing_rule_rule_type" {
  description = ""
  type        = any
}