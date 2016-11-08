resource "aws_ecs_service" "my_service-5f708adddf4a836393924f977d94fc29bfb423d8" {
  name = "my_service-5f708adddf4a836393924f977d94fc29bfb423d8"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-5f708adddf4a836393924f977d94fc29bfb423d8-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-5f708adddf4a836393924f977d94fc29bfb423d8-ID" {
  value = ["${aws_ecs_service.my_service-5f708adddf4a836393924f977d94fc29bfb423d8.id}"]
}

output "Service-my_service-5f708adddf4a836393924f977d94fc29bfb423d8-Name" {
  value = ["${aws_ecs_service.my_service-5f708adddf4a836393924f977d94fc29bfb423d8.name}"]
}

output "Service-my_service-5f708adddf4a836393924f977d94fc29bfb423d8-Cluster" {
  value = ["${aws_ecs_service.my_service-5f708adddf4a836393924f977d94fc29bfb423d8.cluster}"]
}

output "Service-my_service-5f708adddf4a836393924f977d94fc29bfb423d8-IamRole" {
  value = ["${aws_ecs_service.my_service-5f708adddf4a836393924f977d94fc29bfb423d8.iam_role}"]
}

output "Service-my_service-5f708adddf4a836393924f977d94fc29bfb423d8-DesireCount" {
  value = ["${aws_ecs_service.my_service-5f708adddf4a836393924f977d94fc29bfb423d8.desire_count}"]
}

