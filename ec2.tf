resource "aws_instance" "web" {
  ami           = ami-0bcf5425cdc1d8a85
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Server"
  }