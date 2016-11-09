resource "aws_ecs_service" "my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3" {
  name = "my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-26ad31c1858c41b05e85d0c1a12b323a82962ad3-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3-ID" {
  value = ["${aws_ecs_service.my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3.id}"]
}

output "Service-my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3-Name" {
  value = ["${aws_ecs_service.my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3.name}"]
}

output "Service-my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3-Cluster" {
  value = ["${aws_ecs_service.my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3.cluster}"]
}

output "Service-my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3-IamRole" {
  value = ["${aws_ecs_service.my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3.iam_role}"]
}

output "Service-my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3-DesireCount" {
  value = ["${aws_ecs_service.my_service-26ad31c1858c41b05e85d0c1a12b323a82962ad3.desire_count}"]
}

