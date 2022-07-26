resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
    Purpose = "Jenkins Demo"
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
demo for 26th
demo for today
apple good for health
=======
demo for 26th
>>>>>>> 898aeeb7eccfe797b373719ca89c3134d562903c
=======
>>>>>>> parent of 898aeeb (demo for 26)
