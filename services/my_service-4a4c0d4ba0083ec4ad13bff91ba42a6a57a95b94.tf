resource "aws_ecs_service" "my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94" {
  name = "my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-ID" {
  value = ["${aws_ecs_service.my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.id}"]
}

output "Service-my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-Name" {
  value = ["${aws_ecs_service.my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.name}"]
}

output "Service-my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-Cluster" {
  value = ["${aws_ecs_service.my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.cluster}"]
}

output "Service-my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-IamRole" {
  value = ["${aws_ecs_service.my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.iam_role}"]
}

output "Service-my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94-DesireCount" {
  value = ["${aws_ecs_service.my_service-4a4c0d4ba0083ec4ad13bff91ba42a6a57a95b94.desire_count}"]
}

