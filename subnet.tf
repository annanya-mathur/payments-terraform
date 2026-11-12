resource "aws_subnet" "public_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.az_2a
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2a"
  }
}

resource "aws_subnet" "private_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.az_2b
  map_public_ip_on_launch = false

  tags = {
    Name = "private-subnet-2b"
  }
}