resource "aws_s3_bucket" "source" {
  bucket        = "${var.cls_ecs}-pipeline"
  acl           = "private"
  force_destroy = true
}
