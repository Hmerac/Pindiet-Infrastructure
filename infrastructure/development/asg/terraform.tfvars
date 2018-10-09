terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/asg?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc", "../ecs", "../rds", "../alb"]
  }
}

environment       = "Development"
vpc_state_bucket  = "tf-state-050369958887-eu-central-1"
vpc_state_key     = "infrastructure/development/vpc/terraform.state"