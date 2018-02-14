resource "aws_route_table" "public_route" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name = "public_igw_rt"
  }
}

resource "aws_route_table_association" "rt_assoc_public" {
  subnet_id      = "${aws_subnet.public_subnet.id}"
  route_table_id = "${aws_route_table.public_route.id}"
}

resource "aws_route_table" "private_a_route" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat_gw.id}"
  }

  tags {
    Name = "private_a_nat_rt"
  }
}

resource "aws_route_table_association" "rt_assoc_private_a" {
  subnet_id      = "${aws_subnet.private_subnet_a.id}"
  route_table_id = "${aws_route_table.private_a_route.id}"
}

resource "aws_route_table" "private_c_route" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat_gw.id}"
  }

  tags {
    Name = "private_c_nat_rt"
  }
}

resource "aws_route_table_association" "rt_assoc_private_c" {
  subnet_id      = "${aws_subnet.private_subnet_c.id}"
  route_table_id = "${aws_route_table.private_c_route.id}"
}
