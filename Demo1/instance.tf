resource "aws_instance" "instance1" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}