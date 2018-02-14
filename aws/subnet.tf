resource "aws_subnet" "public_subnet" {
  vpc_id                  = "${aws_vpc.tf_vpc.id}"
  cidr_block              = "${var.public_subnet_cidr}"
  availability_zone       = "${var.availability_zone_a}"
  map_public_ip_on_launch = true

  tags {
    Name = "public subnet"
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id                  = "${aws_vpc.tf_vpc.id}"
  cidr_block              = "${var.private_subnet_cidr_a}"
  availability_zone       = "${var.availability_zone_a}"
  map_public_ip_on_launch = false

  tags {
    Name = "private subnet in a"
  }
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id                  = "${aws_vpc.tf_vpc.id}"
  cidr_block              = "${var.private_subnet_cidr_c}"
  availability_zone       = "${var.availability_zone_c}"
  map_public_ip_on_launch = false

  tags {
    Name = "private subnet in c"
  }
}
