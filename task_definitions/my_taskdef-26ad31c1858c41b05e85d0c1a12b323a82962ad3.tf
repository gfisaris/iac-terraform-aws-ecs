resource "aws_ecs_task_definition" "my_task-26ad31c1858c41b05e85d0c1a12b323a82962ad3DEFINITION" {
  family = "my_task-26ad31c1858c41b05e85d0c1a12b323a82962ad3DEFINITION"
  container_definitions = "${file("tasks/my_task-26ad31c1858c41b05e85d0c1a12b323a82962ad3.json")}"
}
