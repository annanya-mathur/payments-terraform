resource "aws_elastic_ip" "nat" {
    domain = "vpc"
}
resource "aws_nat_gateway" "main" {
  allocation_id = aws_elastic_ip.nat.id
  subnet_id    = aws_subnet.public_2a.id

  tags = {
    Name = "${var.project_name}-natgateway"
  }
  depends_on = [aws_internet_gateway.main]
}

