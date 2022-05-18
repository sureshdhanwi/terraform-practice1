resource "aws_s3_bucket" "b" {
  bucket = "mybucket-t2t1t3"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name = "mybucket-t2t1t3"
  }
}


