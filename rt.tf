# Creating Route Table
resource "aws_route_table" "rout-tf" {
 vpc_id = "${aws_vpc.vpc-tf.id}"
route {
 cidr_block = "0.0.0.0/0"
 gateway_id = "${aws_internet_gateway.igw-tf.id}"
 }
tags = {
 Name = "rout-tf"
 }
}
# Associating Route Table
resource "aws_route_table_association" "rt1-tf" {
 subnet_id = "${aws_subnet.public-1.id}"
 route_table_id = "${aws_route_table.rout-tf.id}"
}
# Associating Route Table
resource "aws_route_table_association" "rt2-tf" {
 subnet_id = "${aws_subnet.public-2.id}"
 route_table_id = "${aws_route_table.rout-tf.id}"
}
