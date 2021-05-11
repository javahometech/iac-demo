output "AWS-instance-Public-IP" {
  value = "${aws_instance.Ragesh.public_ip}"
}
resource "local_file" "ansible_inventory_hosts" {
 content = templatefile("inventory.template",
 {
  web_public_ip = "${aws_instance.Ragesh.public_ip}",
  web_id = "${aws_instance.Ragesh.id}",
 }
 )
 filename = "inventory"
}