terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/ecs?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc"]
  }
}

environment       = "development"