# Creating  web subnet1
resource "aws_subnet" "public-1" {
 vpc_id = "${aws_vpc.vpc-tf.id}"
 cidr_block = "192.168.100.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-1a"
tags = {
 Name = "public-1"
}
}

# Creating  web subnet2
resource "aws_subnet" "public-2" {
 vpc_id = "${aws_vpc.vpc-tf.id}"
 cidr_block = "192.168.200.0/24"
 map_public_ip_on_launch = true
 availability_zone = "us-east-1b"
tags = {
 Name = "public-2"
}
}
