provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}

variable "profile" {}
variable "region" {}
