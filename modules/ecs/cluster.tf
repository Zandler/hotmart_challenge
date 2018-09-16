resource "aws_ecs_cluster" "cluster" {
  name = "${var.cls_ecs}"
}

resource "aws_cloudwatch_log_group" "rails-app" {
  name = "${var.cls_ecs}-logs"

  tags {
    Application = "${var.cls_ecs}"
  }
}
