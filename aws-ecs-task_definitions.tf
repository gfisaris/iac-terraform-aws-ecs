resource "aws_ecs_task_definition" "lep_stack" {
  family = "lep_stack"
  container_definitions = "${file("tasks/lep_stack.json")}"
}
