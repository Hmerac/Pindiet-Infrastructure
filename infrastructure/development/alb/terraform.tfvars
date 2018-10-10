terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/alb?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc"]
  }
}

ext_alb_name          = "front-alb"
environment           = "development"
ext_alb_prefix        = "back-alb-Logs"
ext_target_group_name = "front-tg"
vpc_state_bucket      = "tf-state-050369958887-eu-central-1"
vpc_state_key         = "infrastructure/development/vpc/terraform.state"