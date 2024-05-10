resource "aws_instance" " T_server" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = var.instance_Type
  vpc_security_group_ids = [aws_security_group.sg1.id ]
  availability_zone = "${var.Region}"
  subnet_id = aws_subnet.private1.id
  user_data = file("code.sh")
  tags = {
    Name = var.enviroment
  }
}
resource "aws_instance" "T_server1" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg1.id ]
  availability_zone = "us-east-1b"
  subnet_id = aws_subnet.private2.id
  user_data = file("code.sh")
  tags = {
    Name = "webserver-2"
  }
}