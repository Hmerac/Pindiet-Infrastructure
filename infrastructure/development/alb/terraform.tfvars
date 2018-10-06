terragrunt = {
  terraform {
    source = "git::https://hmerac:yamyame2626@github.com/Hmerac/Pindiet-InfrastructureModules.git//platform/alb?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

int_alb_name = "Back-ALB"
ext_alb_name = "Front-ALB"
environment = "Development"
ext_alb_prefix = "Back-ALB-Logs"
int_alb_prefix = "Front-ALB-Logs"
ext_target_group_name = "Front-TG"
int_target_group_name = "Back-TG"
vpc_state_bucket = "tf-state-050369958887-eu-central-1"
vpc_state_key = "development/alb/terraform.state"