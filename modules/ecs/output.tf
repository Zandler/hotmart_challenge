output "repository_url" {
  value = "${aws_ecr_repository.rails-app.repository_url}"
}
output "service_name" {
  value = "${aws_ecs_service.linux-dash.name}"
}
