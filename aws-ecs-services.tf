resource "aws_ecs_service" "lep_stack" {
  name = "LEP_Stack"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.lep_stack.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.TargetGroup-ECS_Cluster-LEP_Stack-ARN}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-LEP_Stack-ID" {
  value = ["${aws_ecs_service.lep_stack.id}"]
}

output "Service-LEP_Stack-Name" {
  value = ["${aws_ecs_service.lep_stack.name}"]
}

output "Service-LEP_Stack-Cluster" {
  value = ["${aws_ecs_service.lep_stack.cluster}"]
}

output "Service-LEP_Stack-IamRole" {
  value = ["${aws_ecs_service.lep_stack.iam_role}"]
}

output "Service-LEP_Stack-DesireCount" {
  value = ["${aws_ecs_service.lep_stack.desire_count}"]
}

