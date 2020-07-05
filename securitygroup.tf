resource "aws_security_group" "packer-instance-sg" {
  vpc_id = "${var.VPC_ID}"
  name = "allow-ssh-from"
  description = "packer instance security group,allowing ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  } 
tags {
    Name = "packer-instance-sg"
  }
}

