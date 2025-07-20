resource "aws_instance" "web1" {
  ami           = "ami-0ec1bf4a8f92e7bd1" # Ubuntu 22.04 LTS in us-west-2
  instance_type = "t2.micro"
  #availability_zone = us-west-2
  subnet_id = "subnet-00842b65d62804089"
  key_name   = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data = file("apache.sh")

  tags = {
    Name = "Web-1"
  }
}

resource "aws_instance" "web2" {
  ami           = "ami-0ec1bf4a8f92e7bd1" # Ubuntu 22.04 LTS in us-west-2
  instance_type = "t2.micro"
  subnet_id = "subnet-08e9bbef79a59f82c"
  key_name   = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data = file("apache.sh")

  tags = {
    Name = "Web-2"
  }
}

resource "aws_instance" "web3" {
  ami           = "ami-0ec1bf4a8f92e7bd1" # Ubuntu 22.04 LTS in us-west-2
  instance_type = "t2.micro"
  subnet_id = "subnet-00f94a91bc77b24c7"
  key_name   = aws_key_pair.bastion.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data = file("apache.sh")

  tags = {
    Name = "Web-3"
  }
}
