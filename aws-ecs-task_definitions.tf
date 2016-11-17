resource "aws_ecs_task_definition" "lep_stack" {
  family = "lep_stack"
  container_definitions = "${file("task_definition_json/lep_stack.json")}"
}

output "task_definition_lep_stack_arn"      { value = "${aws_ecs_service.lep_stack.id}" }
output "task_definition_lep_stack_family"   { value = "${aws_ecs_service.lep_stack.name}" }
output "task_definition_lep_stack_revision" { value = "${aws_ecs_service.lep_stack.cluster}" }
