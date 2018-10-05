terragrunt = {
  terraform {
    source = "git::https://hmerac:yamyame2626@github.com/Hmerac/Pindiet-InfrastructureModules.git//ecs?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

region            = "eu-central-1"
environment       = "Development"
cluster_name      = "PindietCore"