resource "aws_instance" "web" {
  ami                    = "ami-0eb9d67c52f5c80e5" 
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_a.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "WebServer"
  }
}

resource "aws_instance" "app" {
  ami                    = "ami-0eb9d67c52f5c80e5" 
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_a.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "AppServer"
  }
}
