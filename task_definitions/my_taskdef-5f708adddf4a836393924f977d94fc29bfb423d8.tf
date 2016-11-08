resource "aws_ecs_task_definition" "my_task-5f708adddf4a836393924f977d94fc29bfb423d8DEFINITION" {
  family = "my_task-5f708adddf4a836393924f977d94fc29bfb423d8DEFINITION"
  container_definitions = "${file("tasks/my_task-5f708adddf4a836393924f977d94fc29bfb423d8.json")}"
}
