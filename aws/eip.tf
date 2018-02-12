resource "aws_eip" "nat_ip" {
  vpc = true
}
