resource "aws_instance" "web" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t3.micro"

  tags = {
    Name = "github-jenkins-terraform"
  }
}
