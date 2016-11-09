resource "aws_ecs_service" "my_service-5d1585057277047e3c79ff70d09d112776fc08ea" {
  name = "my_service-5d1585057277047e3c79ff70d09d112776fc08ea"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-5d1585057277047e3c79ff70d09d112776fc08ea-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-5d1585057277047e3c79ff70d09d112776fc08ea-ID" {
  value = ["${aws_ecs_service.my_service-5d1585057277047e3c79ff70d09d112776fc08ea.id}"]
}

output "Service-my_service-5d1585057277047e3c79ff70d09d112776fc08ea-Name" {
  value = ["${aws_ecs_service.my_service-5d1585057277047e3c79ff70d09d112776fc08ea.name}"]
}

output "Service-my_service-5d1585057277047e3c79ff70d09d112776fc08ea-Cluster" {
  value = ["${aws_ecs_service.my_service-5d1585057277047e3c79ff70d09d112776fc08ea.cluster}"]
}

output "Service-my_service-5d1585057277047e3c79ff70d09d112776fc08ea-IamRole" {
  value = ["${aws_ecs_service.my_service-5d1585057277047e3c79ff70d09d112776fc08ea.iam_role}"]
}

output "Service-my_service-5d1585057277047e3c79ff70d09d112776fc08ea-DesireCount" {
  value = ["${aws_ecs_service.my_service-5d1585057277047e3c79ff70d09d112776fc08ea.desire_count}"]
}

