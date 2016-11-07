resource "aws_ecs_task_definition" "my_task-07b3233c1e2973216ed6126c4cf2ab62d6b323ca_DEFINITION" {
  family = "my_task-07b3233c1e2973216ed6126c4cf2ab62d6b323ca_DEFINITION"
  container_definitions = "${file("tasks/my_task-07b3233c1e2973216ed6126c4cf2ab62d6b323ca.json")}"
}
