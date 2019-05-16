resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-${var.environment}"
  acl    = "authenticated-user"

  versioning = {
    enabled = true
  }

  tags = {
    Name        = "${var.prefix}-${var.environment}"
    Environment = "${var.environment}"
  }
}
