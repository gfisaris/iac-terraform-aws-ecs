resource "aws_ecs_service" "my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c" {
  name = "my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-ID" {
  value = ["${aws_ecs_service.my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.id}"]
}

output "Service-my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-Name" {
  value = ["${aws_ecs_service.my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.name}"]
}

output "Service-my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-Cluster" {
  value = ["${aws_ecs_service.my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.cluster}"]
}

output "Service-my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-IamRole" {
  value = ["${aws_ecs_service.my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.iam_role}"]
}

output "Service-my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c-DesireCount" {
  value = ["${aws_ecs_service.my_service-6797ca97a8d6bdb31dfb58e6c8ad2413a040be1c.desire_count}"]
}

