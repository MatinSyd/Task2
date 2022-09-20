# Creating External LoadBalancer
resource "aws_lb" "external-alb-tf" {
 name = "elb12"
 internal = false
 load_balancer_type = "application"
 security_groups = [aws_security_group.sg-tf.id]
 subnets = [aws_subnet.public-1.id, aws_subnet.public-2.id]
}
resource "aws_lb_target_group" "target-elb" {
 name = "albtg12"
 port = 80
 protocol = "HTTP"
 vpc_id = aws_vpc.vpc-tf.id
}
resource "aws_lb_target_group_attachment" "attachment" {
 target_group_arn = aws_lb_target_group.target-elb.arn
 target_id = aws_instance.instance12.id
 port = 80
depends_on = [aws_instance.instance12,
]
}
