resource "aws_s3_bucket" "this" {
  bucket        = var.bucket
  acl           = var.acl
  force_destroy = var.enable_force_destroy_bucket

  versioning {
    enabled = var.enable_versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = merge(var.tags)
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = var.enable_block_public_acls
  ignore_public_acls      = var.enable_ignore_public_acls
  block_public_policy     = var.enable_block_public_policy
  restrict_public_buckets = var.enable_restrict_public_buckets
}
