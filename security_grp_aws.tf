resource "aws_security_group" "rds" {
    name        = "terraform_rds_security_group"
    description = "Allow inbound traffic from VPC"
    ingress {
        from_port   = 3306
        to_port     = 3306
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
}
tags = {
    Name = "rds_project_demo"
}
}