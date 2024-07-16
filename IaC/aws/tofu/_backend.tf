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

