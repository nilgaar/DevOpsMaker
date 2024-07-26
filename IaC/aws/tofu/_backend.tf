# tofu {
#   backend "s3" {
#     bucket = "tofu-terraform-state"
#     key    = "terraform.tfstate"
#     region = "eu-west-1"
#   }
# }


resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.state_backend.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "default" {
  bucket                  = aws_s3_bucket.state_backend.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

// Lock system
resource "aws_dynamodb_table" "tofu_backend_lock" {
  name         = "tofu-terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name        = "tofu-terraform-state-lock"
    Environment = "dev"
  }

}


resource "aws_s3_bucket" "state_backend" {
  bucket = "tofu-terraform-state"

  lifecycle {
    # prevent_destroy = true
    prevent_destroy = false
  }

  tags = {
    Name        = "tofu-terraform-state"
    Environment = "dev"
  }

}

resource "aws_s3_bucket_versioning" "state_backend" {
  bucket = aws_s3_bucket.state_backend.bucket

  versioning_configuration {
    status = "Enabled"
  }

}

