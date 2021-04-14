output "Server_ip" {
  value = "${aws_instance.this.private_ip}"
}