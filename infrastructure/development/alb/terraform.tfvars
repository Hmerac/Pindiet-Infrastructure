terragrunt = {
  terraform {
    source = "git::https://hmerac:yamyame2626@github.com/Hmerac/Pindiet-InfrastructureModules.git//platform/alb?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc"]
  }
}

ext_alb_name = "Front-ALB"
environment = "Development"
ext_alb_prefix = "Back-ALB-Logs"
ext_target_group_name = "Front-TG"
vpc_state_bucket = "tf-state-050369958887-eu-central-1"
vpc_state_key = "infrastructure/development/vpc/terraform.state"