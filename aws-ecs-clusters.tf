resource "aws_ecs_cluster" "master" {
  name = "${var.prj_eco}-${var.prj_app}-${var.prj_env}-ecs_cluster"
}

output "ecsClusterID" {
  value = ["${aws_ecs_cluster.master.id}"]
}

output "ecsClusterName" {
  value = ["${aws_ecs_cluster.master.name}"]
}
