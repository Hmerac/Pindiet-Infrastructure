terragrunt = {
  terraform {
    source = "git::https://hmerac:yamyame2626@github.com/Hmerac/Pindiet-InfrastructureModules.git//infrastructure/ecs?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

environment       = "Development"