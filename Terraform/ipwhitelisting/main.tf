

# resource "azurerm_sql_server" "example" {
#   name                         = "example-serverj"
#   resource_group_name          = "sqlserver"
#   location                     = "East US"
#   version                      = "12.0"
#   administrator_login          = "exampleadmin"
#   administrator_login_password = "StrongPassword123!"
# }

resource "azurerm_sql_firewall_rule" "example" {
  name                = var.firewall_rule_name
  resource_group_name = var.resource_group_name
  server_name         = var.sql_server_name

  start_ip_address = "192.168.1.1"  # Replace with the desired IP address
  end_ip_address   = "192.168.1.1"  # You can use the same IP address if needed
}
