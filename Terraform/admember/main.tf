
data "azuread_user" "example" {
  user_principal_name = var.user_principal_name1
}

data "azuread_group" "test" {
 display_name = var.display_name1
}

resource "azuread_group_member" "aduser" {
  group_object_id  = data.azuread_group.test.id
  member_object_id = data.azuread_user.example.id
}