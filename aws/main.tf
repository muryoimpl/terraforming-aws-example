provider "aws" {
  region  = "${var.region}"
  profile = "terraform"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-state-talker-signupper"
    region  = "ap-northeast-1"
    key     = "talker-signupper/terraform.tfstate"
  }
}
