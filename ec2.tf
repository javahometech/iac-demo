resource "aws_instance" "Ragesh" {
  ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "terraform-Jenkins"
tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
}
provisioner "local-exec" {
  command = "sleep 120; ansible-playbook -i '${aws_instance.Ragesh.*.public_ip}' playbook.yml"
}