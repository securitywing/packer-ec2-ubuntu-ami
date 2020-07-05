resource "aws_instance" "ec2_instance" {
  ami           = "${var.AMI_ID}"
  instance_type = "t3.micro"

  # the VPC subnet
  #subnet_id = "${aws_subnet.main-public-1.id}"
  subnet_id = "${var.SUBNET_ID}"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.packer-instance-sg.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.packer_keypair.key_name}"

  tags = {
    Name = "EC2_Packer_Instance"
  }

}
