provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "terraform-state-talker-signupper" {
  bucket = "terraform-state-talker-signupper"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    Name = "terraform state of talker-signupper"
  }
}
