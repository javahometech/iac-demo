resource "aws_instance" "Ragesh" {
  ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
volume_size = var.size

tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
}