# AWS Provider
provider "aws" {
   region     = "us-west-2"
   access_key = "AKIAUQVTOQFTFUAO4I7D"
   secret_key = "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"
}

resource "aws_instance" "terraform_instance" {
  ami = "ami-0ee8244746ec5d6d4"
  instance_type = "t2.micro"
}
