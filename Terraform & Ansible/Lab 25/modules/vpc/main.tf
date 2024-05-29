resource "aws_vpc" "lab25" {
  cidr_block = var.vpc_cidr
  tags = {
    name = "lab25"
  }
}

resource "aws_internet_gateway" "lab25" {
  vpc_id = aws_vpc.lab25.id
  tags = {
    Name = "lab25"
  }
}

resource "aws_subnet" "lab25" {
  vpc_id                  = aws_vpc.lab25.id
  cidr_block              = var.lab25_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = element(var.azs, 0)
  tags = {
    Name = "lab25"
  }
}

resource "aws_route_table" "lab25" {
  vpc_id = aws_vpc.lab25.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab25.id
  }
  tags = {
    Name = "lab25"
  }
}

resource "aws_route_table_association" "lab25" {
  subnet_id      = aws_subnet.lab25.id
  route_table_id = aws_route_table.lab25.id
}

resource "aws_subnet" "lab25p" {
  count = length(var.lab25p_subnets)
  vpc_id     = aws_vpc.lab25.id
  cidr_block = var.lab25p_subnets[count.index]
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "lab25p-${var.lab25p_subnets[count.index]}"
  }
}

resource "aws_security_group" "ec2_sg" {
  vpc_id = aws_vpc.lab25.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

resource "aws_security_group" "rds_sg" {
  vpc_id = aws_vpc.lab25.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}