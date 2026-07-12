terraform {

  backend "s3" {

    bucket = "helena-terraform-state"

    key = "devops-website-lab/terraform.tfstate"

    region = "us-east-1"

    use_lockfile = true

  }

}