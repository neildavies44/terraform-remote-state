variable "region" {
  default     = "eu-west-2"
  description = "The default AWS region"
}

variable "prefix" {
  default     = "neil-sandpit"
  description = "The name of our Org"
}

variable "environment" {
  default     = "development"
  description = "The name of our environment"
}

output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}
