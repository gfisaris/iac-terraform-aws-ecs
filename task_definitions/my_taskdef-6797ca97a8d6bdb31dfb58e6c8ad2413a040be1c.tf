resource "aws_ecs_task_definition" "my_task-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1cDEFINITION" {
  family = "my_task-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1cDEFINITION"
  container_definitions = "${file("tasks/my_task-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.json")}"
}
