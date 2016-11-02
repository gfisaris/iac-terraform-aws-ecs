resource "aws_ecs_service" "nginx" {
  name = "NGinx"

  cluster = "${aws_ecs_cluster.master.id}"
  task_definition = "${aws_ecs_task_definition.nginx.arn}"

  desired_count = 3
  deployment_maximum_percent = "200"
  deployment_minimum_healthy_percent = "100"
}

output "ecs-NGinxService_ID" {
  value = ["${aws_ecs_service.nginx.id}"]
}

output "ecs-NGinxService_Name" {
  value = ["${aws_ecs_service.nginx.name}"]
}

output "ecs-NGinxService_mCluster" {
  value = ["${aws_ecs_service.nginx.cluster}"]
}

output "ecsNGinxService_IamRole" {
  value = ["${aws_ecs_service.nginx.iam_role}"]
}

output "ecs-NGinxService_DesireCount" {
  value = ["${aws_ecs_service.nginx.desire_count}"]
}
