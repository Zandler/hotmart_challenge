resource "aws_ecs_service" "linux-dash" {
  name            = "${var.cls_ecs}"
  task_definition = "${aws_ecs_task_definition.linux-dash.arn}"
  cluster         = "${aws_ecs_cluster.cluster.id}"
  launch_type     = "FARGATE"
  desired_count   = "${var.container_number_to_run}"

  depends_on = ["aws_iam_role_policy.ecs_service_role_policy"]

  network_configuration {
    security_groups  = ["${var.security_groups_ids}"]
    subnets          = ["${var.availability_zones}"]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = "${aws_alb_target_group.api_target_group.arn}"
    container_name   = "${var.app-prd}"
    container_port   = "${var.container_port}"
  }

  depends_on = ["aws_alb_target_group.api_target_group"]
}
