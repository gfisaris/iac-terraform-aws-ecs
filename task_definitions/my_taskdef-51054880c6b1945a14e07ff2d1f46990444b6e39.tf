resource "aws_ecs_task_definition" "my_task-51054880c6b1945a14e07ff2d1f46990444b6e39_DEFINITION" {
  family = "my_task-51054880c6b1945a14e07ff2d1f46990444b6e39_DEFINITION"
  container_definitions = "${file("tasks/my_task-51054880c6b1945a14e07ff2d1f46990444b6e39.json")}"
}
