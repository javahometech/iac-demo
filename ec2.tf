resource "aws_instance" "web" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"

  tags = {
    Name = "github-jenkins-terraform"
  }
}
