output "ip" {
  value = "${aws_instance.Ragesh.*.public_ip}"
}