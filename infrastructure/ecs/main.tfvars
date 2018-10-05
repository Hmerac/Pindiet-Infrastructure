terragrunt = {
  terraform {
    source = "git::ssh://git@code.siemens.com/mindsphere-mainline/ist-infra/TerraformBuildingBlocks/monitoring/instance-monitoring.git?ref=feature/new_features"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
}

region            = "eu-central-1"
environment       = "Development"
cluster_name      = "PindietCore"