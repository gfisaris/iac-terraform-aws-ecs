resource "aws_ecs_service" "my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc" {
  name = "my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.AWS_ECS_TASK_DEFINITION.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.tgrp-ecs_cls-my_app-ddbdb0f3edda707128cd968730e911cf47eeabcc-arn}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc-ID" {
  value = ["${aws_ecs_service.my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc.id}"]
}

output "Service-my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc-Name" {
  value = ["${aws_ecs_service.my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc.name}"]
}

output "Service-my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc-Cluster" {
  value = ["${aws_ecs_service.my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc.cluster}"]
}

output "Service-my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc-IamRole" {
  value = ["${aws_ecs_service.my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc.iam_role}"]
}

output "Service-my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc-DesireCount" {
  value = ["${aws_ecs_service.my_service-ddbdb0f3edda707128cd968730e911cf47eeabcc.desire_count}"]
}

