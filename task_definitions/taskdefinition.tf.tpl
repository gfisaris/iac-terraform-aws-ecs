resource "aws_ecs_task_definition" "AWS_ECS_TASK_DEFINITION" {
  family = "AWS_ECS_TASK_DEFINITION"
  container_definitions = "${file("tasks/AWS_ECS_TASK.json")}"
}
