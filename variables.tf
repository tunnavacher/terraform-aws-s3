
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

variable "lifecycle_rule_id" {
   description = "Define name of the Lifecycle rule"
    type        = string
    default     = ""
}

variable "lifecycle_rule_enabled" {
   description = "Enable or Disable the Lifecycle rule"
    type        = bool
}

variable "standard_ia_days" {
  description = "Objects transition days to Standard-IA"
    type        = number
}

variable "standard_ia" {
  description = "Objects transition to Standard-IA"
    type        = string
    default     = "standard_ia"
}

variable "glacier_days" {
  description = "Objects transition days to Glacier"
    type        = number
}

variable "glacier" {
  description = "Objects transition to Glacier"
    type        = string
    default     = "glacier"
}

variable "expiration_days" {
  description = "Objects expire"
    type        = number
}

variable "sameaccount_replication_rule" {
   description = "IAM rule to access s3 objects from same account in different account bucket"
    type        = string
    default     = ""
}

variable "destination_bucket" {
  description = "Replicate objects in destination bucket in different account"
    type        = string
    default     = ""
}
variable "prefix" {
  description = "To apply to all objects or filter objects in the bucket"
    type        = string
    default     = ""
}

variable "replication_rules_enabled" {
  description = "Choose rule will be enabled or disabled when created"
    type        = string
    default     = ""
}

variable "replicate_objects_encryption" {
   description = "Replicate objects encrypted with AWS KMS will be true or false"
    type        = bool
}

variable "replica_kms_id" {
    type        = string
    description = "Replicate objects encrypted with AWS KMS"
  default     = ""
}

variable "bucket_name" {
    type        = string
    description = "Block public access on the bucket when bucket created"
  default     = ""
}
