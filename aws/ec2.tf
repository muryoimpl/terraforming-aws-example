resource "aws_instance" "bastion" {
  ami                    = "${var.ami_id}"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.public_subnet.id}"
  key_name               = "${aws_key_pair.auth.id}"
  vpc_security_group_ids = ["${aws_security_group.ts_bastion_sg.id}"]

  tags {
    Name = "bastion"
  }
}

resource "aws_instance" "web" {
  ami                    = "${var.ami_id}"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.private_subnet_a.id}"
  key_name               = "${aws_key_pair.auth.id}"
  vpc_security_group_ids = ["${aws_security_group.ts_web_sg.id}"]

  tags {
    Name = "web"
  }
}
