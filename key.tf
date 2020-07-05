resource "aws_key_pair" "packer_keypair" {
  key_name = "packer_keypair"
  public_key = "${file("${var.PUBLIC_KEY}")}"
}
