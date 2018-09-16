data "template_file" "api_task" {
  template = "${file("${path.module}/task-definitions/api-task.json")}"

  vars {
    image               = "${aws_ecr_repository.rails-app.repository_url}"
    app-prd      = "${var.app-prd}"
    container_port      = "${var.container_port}"
    log_group           = "${aws_cloudwatch_log_group.rails-app.name}"
    ecs_cpu_desired    = "${var.ecs_cpu_desired}"
    ecs_ram_desired = "${var.ecs_ram_desired}"
  }
}

resource "aws_ecs_task_definition" "linux-dash" {
  family                   = "${var.cls_ecs}_app"
  container_definitions    = "${data.template_file.api_task.rendered}"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "${var.ecs_cpu_desired}"
  memory                   = "${var.ecs_ram_desired}"

  execution_role_arn = "${aws_iam_role.ecs_execution_role.arn}"
  task_role_arn      = "${aws_iam_role.ecs_execution_role.arn}"
}
