variable "aduser" {
  type = map(object({
    aduser = string
  }))
}
variable "adgroup" {
  type= string
  default = "testjatin2"
}
variable "apiname" {
  type = string
  default = "jatintest2"
}
# variable "sql_server" {
#   type = string
# }
# variable "rule_name" {
#   type = string
# }
# variable "resource_group" {
#   type = string
# }
# variable "start_ip" {
#   type = string
# }
# variable "end_ip" {
# type = string
# }
