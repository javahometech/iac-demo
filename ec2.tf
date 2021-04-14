resource "aws_instance" "Ragesh" {
ami = "ami-0bcf5425cdc1d8a85"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
region = var.region
tags = {
  Name = var.instance_name
   }
}