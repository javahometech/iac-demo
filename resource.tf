resource "aws_instance" "Ragesh" {
ami = "ami-045e6fa7127ab1ac4"
instance_type = var.instance_type
key_name = "POC-STD-KEY-PAIR"
tags = {
  Name = var.instance_name
  Owner = var.Owner
   }
}
#resource "null_resource" "step1"  {
#provisioner "local-exec" {
#            command = "echo ${aws_instance.Ragesh.public_ip}"
#    }
#}
#resource "null_resource" "wait" {
#  provisioner "local-exec" {
#      command = "sleep 180"
#  }
#}
resource "null_resource" "step2" {
depends_on = [
    aws_instance.Ragesh,
#     null_resource.step1,
#    null_resource.wait,
  ]
  # using ansible, declarative approach of configuration management
  provisioner "local-exec" {
    command ="ansible-playbook -i inventory  playbook.yml --private-key=${var.private_key}  --user ${var.ansible_user}"
  }
}





### https://a4ank.medium.com/aws-terraform-ansible-end-to-end-automation-9072f2ecf624
####https://medium.com/on-the-cloud/one-click-environment-creation-with-terraform-ansible-in-under-10-6e8d9284f60