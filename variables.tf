variable "role_dict" {
  type = map(list(list(string)))
}

variable "user-prefix" {
  type = string
  default = "kz"
  description = "prefix used in role name to eliminate conflicts related to role name uniqness per account"
}

variable "roles_to_omit" {
  type = list(string)
  description = "if empty dont omit, it should contain items from role dict, each item if present should be omited during role creaton"
}
