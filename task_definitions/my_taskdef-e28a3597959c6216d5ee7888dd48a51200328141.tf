resource "aws_ecs_task_definition" "my_task-e28a3597959c6216d5ee7888dd48a51200328141DEFINITION" {
  family = "my_task-e28a3597959c6216d5ee7888dd48a51200328141DEFINITION"
  container_definitions = "${file("tasks/my_task-e28a3597959c6216d5ee7888dd48a51200328141.json")}"
}
