resource "aws_security_group" "rds" {
    name        = "rds"
    description = "Allow inbound traffic from VPC"
    vpc_id      = "${aws_vpc.vpc.id}"
    ingress {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["${aws_vpc.vpc.cidr_block}"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
}
tags {
    Name = "rds_project_demo"
}
}