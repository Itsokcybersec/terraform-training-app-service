variable "saname" {
  type = string
  description = "Storage account name"
}

variable "rgname" {
  type = string
  description = "Resource group name"
}

variable "location" {
  type = string
  description = "Azure Location"
  default = "canadaeast"
}