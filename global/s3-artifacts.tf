resource "aws_s3_bucket" "artifacts" {
  bucket = "image-app-artifacts-bucket-${var.environment}"
  tags = {
    Project   = "image-processor"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "artifacts" {
  bucket                  = aws_s3_bucket.artifacts.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
