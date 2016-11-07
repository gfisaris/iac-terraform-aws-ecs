resource "aws_ecs_service" "my_service-e28a3597959c6216d5ee7888dd48a51200328141" {
  name = "my_service-e28a3597959c6216d5ee7888dd48a51200328141"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-e28a3597959c6216d5ee7888dd48a51200328141-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-e28a3597959c6216d5ee7888dd48a51200328141-ID" {
  value = ["${aws_ecs_service.my_service-e28a3597959c6216d5ee7888dd48a51200328141.id}"]
}

output "Service-my_service-e28a3597959c6216d5ee7888dd48a51200328141-Name" {
  value = ["${aws_ecs_service.my_service-e28a3597959c6216d5ee7888dd48a51200328141.name}"]
}

output "Service-my_service-e28a3597959c6216d5ee7888dd48a51200328141-Cluster" {
  value = ["${aws_ecs_service.my_service-e28a3597959c6216d5ee7888dd48a51200328141.cluster}"]
}

output "Service-my_service-e28a3597959c6216d5ee7888dd48a51200328141-IamRole" {
  value = ["${aws_ecs_service.my_service-e28a3597959c6216d5ee7888dd48a51200328141.iam_role}"]
}

output "Service-my_service-e28a3597959c6216d5ee7888dd48a51200328141-DesireCount" {
  value = ["${aws_ecs_service.my_service-e28a3597959c6216d5ee7888dd48a51200328141.desire_count}"]
}

