resource "aws_instance" "Ragesh-new" {
  ami = "ami-0bcf5425cdc1d8a85"
  instance_type = "t3.micro"
  key_name = "terraform-Jenkins"
  tags {
    Name = "test instance"
    Owner =  "Ragesh Moorkoth"
  }
}