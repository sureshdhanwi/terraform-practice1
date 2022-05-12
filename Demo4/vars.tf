variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}
variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-09d56f8956ab235b3"
    us-west-2 = "ami-0ee8244746ec5d6d4"
    eu-west-1 = "ami-00c90dbdc12232b58"
  }
}
