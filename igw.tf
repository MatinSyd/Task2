# Creating Internet Gateway
resource "aws_internet_gateway" "igw-tf" {
 vpc_id = "${aws_vpc.vpc-tf.id}"
tags = {
 Name = "igw-tf"
}
}
