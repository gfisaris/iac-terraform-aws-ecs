resource "aws_ecs_cluster" "master" {
  name = "${data.terraform_remote_state.aws_ds.region_name}"
}

output "cluster_master_id"    { value = "${aws_ecs_cluster.master.id}" }
output "cluster_master_name"  { value = "${aws_ecs_cluster.master.name}" }
