resource "aws_ecs_task_definition" "nginx" {
  family = "nginx"
  container_definitions = "${file("tasks/nginx.json")}"
}
