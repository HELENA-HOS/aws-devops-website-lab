locals {

  common_tags = {
    Provisioned = "Terraform"
    Repository  = var.repository_url
    Environment = var.environment
  }

  resource_names = {
    ec2 = "${var.project_name}-server"
    sg  = "${var.project_name}-sg"
    ecr = "${var.project_name}-ecr"
  }

}