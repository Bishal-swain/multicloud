locals {
  bucket_names = [for i in range(var.number_of_buckets) : format("bucket-%02d", i + 1)]  # Generate instance names
}
resource "aws_s3_bucket" "badall" {
    for_each = toset(local.bucket_names)
   
}
