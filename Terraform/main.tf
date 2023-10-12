
module "aduser" {
  depends_on = [ module.adgroup ]
  source = "../Terraform/admember"
  for_each = try (var.aduser,{})
  user_principal_name1 = "${each.value.aduser}"
  display_name1 = var.adgroup
}

module "adgroup" {
  source = "../Terraform/adgroup"
  display_name1 = var.adgroup
}

# module "api" {
#   source = "../Terraform/adapi"
#   api= var.apiname
# }

# module "apipermission" {
#   source = "../Terraform/apipermission"
#   #api= var.apiname
  
# }

# module "azurerm_sql_server" {
#   source = "../Terraform/ipwhitelisting"
#   firewall_rule_name = var.rule_name
#   end_ip_address = var.end_ip
#   start_ip_address = var.start_ip
#   sql_server_name = var.sql_server
#   resource_group_name = var.resource_group
# }