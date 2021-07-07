# Bucket creation to keep source data
resource "aws_s3_bucket" "bucket_source_data" {
  bucket = var.bucketname
  acl    = var.acl
  tags = {
    environment = var.env
  }

# Bucket versiong enabled for replication or else Disable
 versioning {
    enabled = var.versioning_enabled
  }
 
# Automatically encrypt new objects stored in this bucket
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_master_key_id
        sse_algorithm     = var.sse_algorithm
      }
    }
  }

# Define actions for S3 to take during an object's lifetime such as transitioning objects to another storage class and archiving
  lifecycle_rule {
   id      = var.lifecycle_rule_id
   enabled = var.lifecycle_rule_enabled

    prefix = var.prefix

    transition {
     days          = var.standard_ia_days
     storage_class = var.standard_ia
    }

   transition {
     days          = var.glacier_days
     storage_class = var.glacier
    }

   expiration {
     days = var.expiration_days
    }
  }
 
  # To define options you want Amazon S3 to apply during replication 
  #replication_configuration {
   # role = var.crossaccount_replication_rule

    #rules {
    #  prefix = var.prefix
      #status = var.replication_rules_enabled

     # destination {
      #  bucket             = var.destination_bucket
    #    replica_kms_key_id = var.replica_kms_id
     # }

     # source_selection_criteria {
     #   sse_kms_encrypted_objects {
       #   enabled = var.replicate_objects_encryption
      #  }
      #}
    #}
  #}
}
# Block public access 
 resource "aws_s3_bucket_public_access_block" "bucket_source_data" {
 bucket                  = aws_s3_bucket.bucket_source_data.bucket
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

locals {
  bucket_object = [{
    key = var.key1
  },
  {
    key = var.key2
  }]
}

resource "aws_s3_bucket_object" "bucket_object" {
  source = "/"
  bucket     = aws_s3_bucket.bucket_source_data.bucket
  server_side_encryption = var.server_side_encryption
  dynamic "key" {
    for_each = var.bucket_object
    content {
      key = lookup(key.value, "key", "")
    }
  }
}
