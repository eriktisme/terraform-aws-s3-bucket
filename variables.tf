variable "bucket" {
  description = "The name of the bucket."
  type        = string
}

variable "acl" {
  description = "The ACL of the bucket."
  type        = string
  default     = "private"
}

variable "enable_versioning" {
  description = "Indicate whether the bucket will use versioning."
  type        = bool
  default     = true
}

variable "enable_force_destroy_bucket" {
  description = "Indicate whether the bucket will be emptied and destroyed."
  type        = bool
  default     = false
}

variable "enable_block_public_acls" {
  description = "Indicate whether the bucket should block public ACLS for this bucket."
  type        = bool
  default     = true
}

variable "enable_ignore_public_acls" {
  description = "Indicate whether the bucket should ignore public ACLS for this bucket."
  type        = bool
  default     = true
}

variable "enable_block_public_policy" {
  description = "Indicate whether the bucket should block public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "enable_restrict_public_buckets" {
  description = "Indicate whether the bucket should restrict public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}
