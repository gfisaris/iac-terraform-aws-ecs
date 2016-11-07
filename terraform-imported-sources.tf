data "terraform_remote_state" "aws_vpc" {
    backend = "local"
    config {
        path = "${path.module}/../../aws-vpc-resources/master/terraform.tfstate"
    }
}

data "terraform_remote_state" "aws_iam" {
  backend = "local"
  config {
    path = "${path.module}/../../aws-iam-resources/master/terraform.tfstate"
  }
}

data "terraform_remote_state" "aws_ec2_alb" {
  backend = "local"
  config {
    path = "${path.module}/../../aws-ec2-alb/master/terraform.tfstate"
  }
}
