#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "name_prefix" {
  description = "Name prefix for resources on AWS"
}

#------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
#------------------------------------------------------------------------------
variable "region" {
  description = "AWS Region the infrastructure is hosted in"
}
