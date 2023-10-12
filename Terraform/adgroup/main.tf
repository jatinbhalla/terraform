
resource "azuread_group" "adgroup" {
 display_name = var.display_name1
 #mail_enabled = false
 security_enabled = true
}