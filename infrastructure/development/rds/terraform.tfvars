terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/rds?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc"]
  }
}

vpc_name              = "MainVPC"
environment           = "Development"
availability_zones    = ["eu-central-1a", "eu-central-1b"]
vpc_state_bucket      = "tf-state-050369958887-eu-central-1"
vpc_state_key         = "infrastructure/development/vpc/terraform.state"
allocated_storage     = "20"
instance_class        = "db.m3"
multi_az              = true
database_name         = "PindietCoreRDS"
database_username     = "pindiet"
database_password     = "utGH4yEpZDe5"