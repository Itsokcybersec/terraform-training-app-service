#Variables for module blocks
variable "environment" {
  type = string
  description = "Environment Name"
  default = "lab"
}

variable "location" {
  type = string
  description = "Azure Location"
  default = "canadaeast"
}

variable "build_region" {
  type = string
  description = "Azure Build Region"
  default = "canada-central" #"canada-east"
}

variable "owner" {
  type = string
  description = "Owner tag for resource creation"
  default = "DevOps"
}

variable "deployment" {
  type = string
  description = "Deployment Mode"
  default = "terraform"
}

variable "department" {
  type = string
  description = "Deployment Team"
  default = "DevOps"
}

variable "resource_group_name" {
  type = string
  description = "Resource Group Name"
  default = "ResourceGroupName"
}

variable "company_division" {
  type = string
  description = "Company division"
  default = "xyz"
}