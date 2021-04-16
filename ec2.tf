resource "aws_instance" "Ragesh" {
ami = "ami-09d9c5cdcfb8fc655"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
tags = {
  Name = var.instance_name
   }
}