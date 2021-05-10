resource "aws_instance" "Ragesh" {
  ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "POC-STD-KEY-PAIR"
tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
    provisioner "local-exec" {
    command = "ansible-playbook -u ec2-user -i inventory  --private-key POC-STD-KEY-PAIR.pem playbook.yml"
  }
  }


resource "local_file" "ansible_inventory_hosts" {
 content = templatefile("inventory.template",
 {
  web_public_ip = ${aws_instance.Ragesh.*.public_ip},

 }
 )
 filename = "inventory"
}

### https://a4ank.medium.com/aws-terraform-ansible-end-to-end-automation-9072f2ecf624
####https://medium.com/on-the-cloud/one-click-environment-creation-with-terraform-ansible-in-under-10-6e8d9284f60