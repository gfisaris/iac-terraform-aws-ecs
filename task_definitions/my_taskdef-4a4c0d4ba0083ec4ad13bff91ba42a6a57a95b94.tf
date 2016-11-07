resource "aws_ecs_task_definition" "my_task-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94DEFINITION" {
  family = "my_task-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94DEFINITION"
  container_definitions = "${file("tasks/my_task-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.json")}"
}
