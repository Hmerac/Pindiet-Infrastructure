terragrunt = {
  terraform {
    source = "git::https://hmerac:yamyame2626@github.com/Hmerac/Pindiet-InfrastructureModules.git//vpc?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

vpc_name = "MainVPC"