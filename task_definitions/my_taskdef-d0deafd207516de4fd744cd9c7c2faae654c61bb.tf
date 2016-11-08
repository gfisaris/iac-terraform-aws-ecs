resource "aws_ecs_task_definition" "my_task-d0deafd207516de4fd744cd9c7c2faae654c61bbDEFINITION" {
  family = "my_task-d0deafd207516de4fd744cd9c7c2faae654c61bbDEFINITION"
  container_definitions = "${file("tasks/my_task-d0deafd207516de4fd744cd9c7c2faae654c61bb.json")}"
}
