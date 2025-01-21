provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Devv"
    yor_name             = "dev_s3"
    yor_trace            = "42152ebd-6fe3-4c12-930c-78c2278b76c9"
    git_commit           = "8f9cf6a6336fbb2c82946848a6562a0cbb02e372"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 20:13:51"
    git_last_modified_by = "hdansou@users.noreply.github.com"
    git_modifiers        = "hdansou"
    git_org              = "hdansou"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
