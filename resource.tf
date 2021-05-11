resource "aws_instance" "Ragesh" {
ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "POC-STD-KEY-PAIR"
tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
}
resource "null_resource" "nulllocal1"  {
provisioner "local-exec" {
            command = "echo ${aws_instance.Ragesh.*.public_ip} > publicip.txt"
    }
}
resource "null_resource" "nulllocal2" {
depends_on = [
     aws_instance.Ragesh,
     null_resource.nulllocal1,
    ]
  # using ansible, declarative approach of configuration management
  provisioner "local-exec" {
    command ="ansible-playbook -i inventory  playbook.yml --private-key=POC-STD-KEY-PAIR  --user ec2-user"
  }
}


### https://a4ank.medium.com/aws-terraform-ansible-end-to-end-automation-9072f2ecf624
####https://medium.com/on-the-cloud/one-click-environment-creation-with-terraform-ansible-in-under-10-6e8d9284f60