module "s3_bucket_lab" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "bucket-lab-natto-30-days"

  acl = "null"

  versioning = {
    enabled = true
  }

  tags = {
    Name        = "meu-bucket-lab"
    Environment = "Dev"
  }

}