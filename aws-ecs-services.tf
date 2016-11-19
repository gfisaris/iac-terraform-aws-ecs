resource "aws_ecs_service" "lep_stack" {
  name = "lep_stack"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.lep_stack.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.role_ecsServiceRole_arn}"

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.target_group_external_http_80_arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "service_lep_stack_id"             { value = "${aws_ecs_service.lep_stack.id}" }
output "service_lep_stack_name"           { value = "${aws_ecs_service.lep_stack.name}" }
output "service_lep_stack_cluster"        { value = "${aws_ecs_service.lep_stack.cluster}" }
output "service_lep_stack_iam_role"       { value = "${aws_ecs_service.lep_stack.iam_role}" }
output "service_lep_stack_desired_count"  { value = "${aws_ecs_service.lep_stack.desired_count}" }
