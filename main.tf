
provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
    type = string
    default = "ami-09298640a92b2d12c"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

resource "aws_instance" "instance1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "mumbai"

  tags = {
    Name = "server"
  }
}

 
output "instance_id" {
    value = aws_instance.instance1.id  
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.instance1.public_ip
}
