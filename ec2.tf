resource "aws_instance" "Ragesh" {
  ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "POC-STD-KEY-PAIR"
tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
   provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ec2-user -i '${aws_instance.Ragesh.*.public_ip}', --private-key POC-STD-KEY-PAIR.pem playbook.yml >> /tmp/ansible-output"
  }
}


