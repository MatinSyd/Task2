# Creating VPC
resource "aws_vpc" "vpc-tf" {
 cidr_block = "192.168.0.0/16"

tags = {
 Name = "vpc-tf"
}
}
