# variables which are changed by environment
variable "env_name" {
  default = "stg"
}

variable "key_name" {
  default = "terraform"
}

variable "public_key_path" {
  default = "~/tmp/terraform.pub"
}

# variables which are not changed by environment
variable "region" {
  default = "ap-northeast-1"
}

variable "app_name" {
  default = "talker-signupper"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr_a" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr_c" {
  default = "10.0.3.0/24"
}

variable "availability_zone_a" {
  default = "ap-northeast-1a"
}

variable "availability_zone_c" {
  default = "ap-northeast-1c"
}

variable "ami_id" {
  default = "ami-e3166185"
}
