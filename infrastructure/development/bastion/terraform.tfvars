terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/bastion?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc"]
  }
}

environment           = "development"
vpc_state_bucket      = "tf-state-050369958887-eu-central-1"
vpc_state_key         = "infrastructure/development/vpc/terraform.state"
bastion_name          = "bastion"
bastion_keypair_name  = "bastion"