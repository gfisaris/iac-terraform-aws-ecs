resource "aws_ecs_service" "my_service-51054880c6b1945a14e07ff2d1f46990444b6e39" {
  name = "my_service-51054880c6b1945a14e07ff2d1f46990444b6e39"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.my_taskdef-51054880c6b1945a14e07ff2d1f46990444b6e39.arn}"

  desired_count = 9
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"

  iam_role = "${data.terraform_remote_state.aws_iam.iamRole_ecsServiceSchedulerRole}" 

  load_balancer {
    target_group_arn = "${data.terraform_remote_state.aws_ec2_alb.TargetGroup-ECS_Cluster-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39_ALB-ARN}"
    container_name = "nginx"
    container_port = "80"
  }
}

output "Service-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39-ID" {
  value = ["${aws_ecs_service.my_service-51054880c6b1945a14e07ff2d1f46990444b6e39.id}"]
}

output "Service-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39-Name" {
  value = ["${aws_ecs_service.my_service-51054880c6b1945a14e07ff2d1f46990444b6e39.name}"]
}

output "Service-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39-Cluster" {
  value = ["${aws_ecs_service.my_service-51054880c6b1945a14e07ff2d1f46990444b6e39.cluster}"]
}

output "Service-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39-IamRole" {
  value = ["${aws_ecs_service.my_service-51054880c6b1945a14e07ff2d1f46990444b6e39.iam_role}"]
}

output "Service-my_service-51054880c6b1945a14e07ff2d1f46990444b6e39-DesireCount" {
  value = ["${aws_ecs_service.my_service-51054880c6b1945a14e07ff2d1f46990444b6e39.desire_count}"]
}

