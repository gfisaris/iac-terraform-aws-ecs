resource "aws_ecs_service" "AWS_ECS_SERVICE" {
  name = "AWS_ECS_SERVICE"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-AWS_EC2_ALB_TG-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-AWS_ECS_SERVICE-ID" {
  value = ["${aws_ecs_service.AWS_ECS_SERVICE.id}"]
}

output "Service-AWS_ECS_SERVICE-Name" {
  value = ["${aws_ecs_service.AWS_ECS_SERVICE.name}"]
}

output "Service-AWS_ECS_SERVICE-Cluster" {
  value = ["${aws_ecs_service.AWS_ECS_SERVICE.cluster}"]
}

output "Service-AWS_ECS_SERVICE-IamRole" {
  value = ["${aws_ecs_service.AWS_ECS_SERVICE.iam_role}"]
}

output "Service-AWS_ECS_SERVICE-DesireCount" {
  value = ["${aws_ecs_service.AWS_ECS_SERVICE.desire_count}"]
}

