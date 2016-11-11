resource "aws_ecs_task_definition" "AWS_ECS_TASKDEFINITION" {
  family = "AWS_ECS_TASKDEFINITION"
  container_definitions = "${file("tasks/AWS_ECS_TASK_JSON_FILE.json")}"
}
