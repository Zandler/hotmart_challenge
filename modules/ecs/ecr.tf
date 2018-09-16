resource "aws_ecr_repository" "rails-app" {
  name = "${var.rails-default}"
}
