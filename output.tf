output "AWS-instance-Public-IP" {
  value = "${aws_instance.Ragesh.public_ip}"
}
resource "local_file" "ansible_inventory_hosts" {
 content = templatefile("inventory.template",
 {
  web_public_ip = aws_instance.Ragesh.public_ip,
 }
 )
 filename = "inventory"
}
resource "null_resource" "step3"  {
depends_on = [
     null_resource.step1,
   ]
provisioner "local-exec" {
           command = "echo  ${aws_instance.web.public_ip}"
       }
}