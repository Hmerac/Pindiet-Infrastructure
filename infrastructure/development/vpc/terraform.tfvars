terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/vpc?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

vpc_name              = "MainVPC"
public_subnets_cidr   = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets_cidr  = ["10.0.3.0/24", "10.0.4.0/24"]
environment           = "Development"
vpc_cidr_block        = "10.0.0.0/16"
availability_zones    = ["eu-central-1a", "eu-central-1b"]