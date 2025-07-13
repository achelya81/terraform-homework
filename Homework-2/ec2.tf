resource "aws_instance" "web" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = "t2.micro"
 #availability_zone = us-west-2
  subnet_id = "subnet-00842b65d62804089"
  key_name   = "bastion-key"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")
 


  tags = {
    Name = "Provision3"
  }

}

output ec2 {
  value = aws_instance.web.public_ip
}