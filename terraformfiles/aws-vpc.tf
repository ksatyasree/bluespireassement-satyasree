resource "aws_vpc" "demovpcid" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "Demovpc"
  }
}
resource "aws_eip" "ip-test-env" {
  instance = "${aws_instance.mario-ec2id[0].id}"
  vpc      = true
}