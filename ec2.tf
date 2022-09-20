# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "instance12" {
 ami = "ami-05fa00d4c63e32376"
 instance_type = "t2.micro"
 key_name = "linux"
 vpc_security_group_ids = ["${aws_security_group.sg-tf.id}"]
 subnet_id = "${aws_subnet.public-1.id}"
 associate_public_ip_address = true
 user_data = "${file("user.sh")}"
tags = {
 Name = "instance12"
}
}
