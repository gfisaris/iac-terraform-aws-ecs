resource "aws_ecs_cluster" "master" {
  name = "${var.prj_eco}-${var.prj_app}-${var.prj_env}-ecs_cluster"
}

output "ClusterID" {
  value = "${aws_ecs_cluster.master.id}"
}

output "Cluster_Name" {
  value = "${aws_ecs_cluster.master.name}"
}
