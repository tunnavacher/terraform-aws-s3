# Fetching bucket details to block public access on the bucket 
data "aws_s3_bucket" "bucket_source_data" {
  bucket = var.bucket_name
}
