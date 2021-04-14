#------------------------------------------------------------------------------
# Misc
#------------------------------------------------------------------------------
variable "instance_name" {
description = "Name prefix for resources on AWS"
type = string
default = "test-instance"
}

#------------------------------------------------------------------------------
# AWS CREDENTIALS AND REGION
#------------------------------------------------------------------------------
variable "instance_type" {
description = "AWS EC2 instance type"
default = "t2.micro"
}
variable "region" {
description = "AWS Region the infrastructure is hosted in"
default = "us-east-1"
}
variable "cloudprovider" {
description = "Select the Cloud Provider"
default = "AWS"
}
