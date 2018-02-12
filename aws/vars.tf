# variables which are changed by environment
variable "env_name" {
  default = "stg"
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
