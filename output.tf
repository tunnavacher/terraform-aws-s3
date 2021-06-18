output "bucket_id" {
  value = aws_s3_bucket.bucket_source_data.id
}

output "bucket_arn" {
  value = aws_s3_bucket.bucket_source_data.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.bucket_source_data.bucket_domain_name 
}

output "bucket_region" {
  value = aws_s3_bucket.bucket_source_data.region 
}

output "bucket_tags_all" {
  value = aws_s3_bucket.bucket_source_data.tags_all 
}
