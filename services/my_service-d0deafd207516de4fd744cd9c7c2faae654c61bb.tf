resource "aws_ecs_service" "my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb" {
  name = "my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-d0deafd207516de4fd744cd9c7c2faae654c61bb-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb-ID" {
  value = ["${aws_ecs_service.my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb.id}"]
}

output "Service-my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb-Name" {
  value = ["${aws_ecs_service.my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb.name}"]
}

output "Service-my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb-Cluster" {
  value = ["${aws_ecs_service.my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb.cluster}"]
}

output "Service-my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb-IamRole" {
  value = ["${aws_ecs_service.my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb.iam_role}"]
}

output "Service-my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb-DesireCount" {
  value = ["${aws_ecs_service.my_service-d0deafd207516de4fd744cd9c7c2faae654c61bb.desire_count}"]
}

