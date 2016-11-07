resource "aws_ecs_task_definition" "my_task-ddbdb0f3edda707128cd968730e911cf47eeabccDEFINITION" {
  family = "my_task-ddbdb0f3edda707128cd968730e911cf47eeabccDEFINITION"
  container_definitions = "${file("tasks/my_task-ddbdb0f3edda707128cd968730e911cf47eeabcc.json")}"
}
