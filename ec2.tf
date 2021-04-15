resource "aws_instance" "Ragesh" {
ami = "ami-0577b787189839998"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
tags = {
  Name = var.instance_name
   }
}