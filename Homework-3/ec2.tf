resource "aws_instance" "ubuntu" {
  ami           = "ami-05f991c49d264708f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.hw3-sg.id]
  user_data = file("apache.sh")

  tags = {
    Name = "ubuntu"
  }
}

resource "aws_instance" "amazon" {
  ami           = "ami-03b322c510c7cf8e3"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.hw3-sg.id]
  user_data = file("apache1.sh")
 

  tags = {
    Name = "amazon"
  }
}

output hello {
    value = aws_instance.ubuntu.public_ip
}

output hello1 {
    value = aws_instance.amazon.public_ip
}