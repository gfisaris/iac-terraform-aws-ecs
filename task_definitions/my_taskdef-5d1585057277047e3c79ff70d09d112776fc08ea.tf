resource "aws_ecs_task_definition" "my_task-5d1585057277047e3c79ff70d09d112776fc08eaDEFINITION" {
  family = "my_task-5d1585057277047e3c79ff70d09d112776fc08eaDEFINITION"
  container_definitions = "${file("tasks/my_task-5d1585057277047e3c79ff70d09d112776fc08ea.json")}"
}
