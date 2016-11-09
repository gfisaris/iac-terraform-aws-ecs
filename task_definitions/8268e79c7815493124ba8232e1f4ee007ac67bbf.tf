resource "aws_ecs_task_definition" "8268e79c7815493124ba8232e1f4ee007ac67bbfDEFINITION" {
  family = "8268e79c7815493124ba8232e1f4ee007ac67bbfDEFINITION"
  container_definitions = "${file("tasks/8268e79c7815493124ba8232e1f4ee007ac67bbf.json")}"
}
