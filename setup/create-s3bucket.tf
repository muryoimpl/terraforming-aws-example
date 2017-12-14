provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "terraform-state-talker-signupper" {
  bucket = "terraform-state-${var.app_name}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "terraform state of ${var.app_name}"
  }
}
