resource "aws_s3_bucket" "demo_s3" {
  bucket = "florentino-terraform-remote-state-storage-s3"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = "demo_s3"
  }
}