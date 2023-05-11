resource "aws_instance" "shadnagar" {
  ami           = "ami-016eb5d644c333ccb"
  instance_type = "t2.micro"

  tags = {
    Name = "github-jenkins-terraform"
  }
}

resource "aws_instance" "hyderabad" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.small"

  tags = {
    Name = "github-jenkins-AWS"
  }
}

