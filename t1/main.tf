provider "aws" {
    region = "us-east-1"
}

variable "subnet_id" {
    description = "Subnet ID to deploy to"
}

resource "aws_instance" "test_instance" {
    ami             = "ami-0e1d30f2c40c4c701"
    instance_type   = "t2.micro"
    subnet_id       = var.subnet_id
}

output "instance_id" {
    value = aws_instance.test_instance.id
}