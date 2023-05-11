# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "mario-ec2id" {
 ami = "ami-0d81306eddc614a45"
 instance_type = "t2.micro"
 count = 1
 key_name = "tests"
 vpc_security_group_ids = ["${aws_security_group.demosgid.id}"]
 subnet_id = aws_subnet.demosubnetid.id
 associate_public_ip_address = true
 #user_data = "${file("data.sh")}"
tags = {
 Name = "mario-ec2"
}
}
# # Creating 1st EC2 instance in Public Subnet
# resource "aws_instance" "aC-ec2id" {
#  ami = "ami-0d81306eddc614a45"
#  instance_type = "t2.micro"
#  count = 1
#  key_name = "tests"
#  vpc_security_group_ids = ["${aws_security_group.demosgid.id}"]
#  subnet_id = aws_subnet.demosubnetid.id
#  associate_public_ip_address = true
#  #user_data = "${file("data.sh")}"
# tags = {
#  Name = "pubg-ec2"
# }
# }