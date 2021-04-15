resource "aws_instance" "Ragesh" {
ami = "ami-0742b4e673072066f"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
tags = {
  Name = var.instance_name
   }
}