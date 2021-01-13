output "id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.this.id
}

output "arn" {
  description = "The ARN of the bucket."
  value       = aws_s3_bucket.this.arn
}

output "domain_name" {
  description = "The bucket domain name."
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "regional_domain_name" {
  description = "The regional bucket domain name."
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}
