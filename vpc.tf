provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "abilash-atlantis1" {
  bucket = "abilash-atlantis1"
  acl    = "private"

  tags = {
    Name        = "abilash-atlantis1"
    Environment = "Dev"
  }
}
