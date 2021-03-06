# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}

output "dns_name" {
    value = "${aws_elb.my_terraform_elb.dns_name}"
}


