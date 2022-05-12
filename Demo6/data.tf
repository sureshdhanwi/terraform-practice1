data "aws_ip_ranges" "Oregon_ec2" {
  regions  = ["us-west-2"]
  services = ["ec2"]
}

resource "aws_security_group" "from_Oregon" {
  name = "from_Oregon"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    #cidr_blocks = data.aws_ip_ranges.Oregon_ec2.cidr_blocks
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    CreateDate = data.aws_ip_ranges.Oregon_ec2.create_date
    SyncToken  = data.aws_ip_ranges.Oregon_ec2.sync_token
  }
}
