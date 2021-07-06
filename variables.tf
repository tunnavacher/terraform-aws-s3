
variable "env" {
  description = "Tag for s3 bucket"
  type = string
  default = ""
}

variable "bucketname" {
  description = "Name of the bucket"
  type        = string
  default     = ""
}

variable "acl" {
  description = "Details of Access control list"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "A state of versioning true or false"
  type        = bool
  default     = true
}

variable "kms_master_key_id" {
    description = "The AWS KMS master key ID used for the SSE-KMS encryption"
    type        = string
    default     = ""
}

variable "sse_algorithm" {
  description = "Required Valid values are AES256 and aws:kms"
    type        = string
    default     = ""
}

variable "block_public_acls" {
  type = bool
  default = true
}

variable "block_public_policy" {
  type = bool
  default = true
}

variable "ignore_public_acls" {
  type = bool
  default = true
}

variable "restrict_public_buckets" {
  type = bool
  default = true
}

variable "lifecycle_rule_id" {
 description = "Define name of the Lifecycle rule"
   type        = string
   default     = "replicationtest"
}

variable "lifecycle_rule_enabled" {
  description = "Enable or Disable the Lifecycle rule"
  type        = bool
  default     = true
}

variable "prefix" {
  description = "To apply to all objects or filter objects in the bucket"
   type        = string
   default     = ""
}
variable "standard_ia_days" {
  description = "Objects transition days to Standard-IA"
    type        = number
  default = 30
}

variable "standard_ia" {
  description = "Objects transition to Standard-IA"
    type        = string
    default     = "STANDARD_IA"
}

 variable "glacier_days" {
  description = "Objects transition days to Glacier"
    type        = number
   default = 90
}

variable "glacier" {
  description = "Objects transition to Glacier"
    type        = string
    default     = "GLACIER"
}

variable "expiration_days" {
  description = "Objects expire"
    type        = number
  default     = 365
}

#variable "crossaccount_replication_rule" {
 # description = "IAM rule to access s3 objects from same account in different account bucket"
#   type        = string
 #  default     = ""
#}

#variable "destination_bucket" {
 #description = "Replicate objects in destination bucket in different account"
  #  type        = string
   # default     = ""
#}

#variable "replication_rules_enabled" {
 # description = "Choose rule will be enabled or disabled when created"
  #  type        = string
   # default     = ""
#}

#variable "replicate_objects_encryption" {
   #description = "Replicate objects encrypted with AWS KMS will be true or false"
    #type        = bool
#}

#variable "replica_kms_id" {
   # type        = string
   # description = "Replicate objects encrypted with AWS KMS"
  #default     = ""
#}

variable "bucket_name" {
    type        = string
    description = "Block public access on the bucket when bucket created"
  default     = ""
}
