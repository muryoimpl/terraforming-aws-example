resource "aws_instance" "bastion" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public_subnet.id}"

  tags {
    Name = "bastion"
  }
}

resource "aws_instance" "web" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.private_subnet_a.id}"

  tags {
    Name = "web"
  }
}
