provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "instance1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "mumbai"

  tags = {
    Name = "server"
  }
}

 
