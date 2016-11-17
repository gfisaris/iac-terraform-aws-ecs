resource "aws_ecs_cluster" "master" {
  name = "${data.terraform_remote_state.aws_dcs.region_current_name}"
}

output "ecs_cluster_master_id"    { value = "${aws_ecs_cluster.master.id}" }
output "ecs_cluster_master_name"  { value = "${aws_ecs_cluster.master.name}" }
