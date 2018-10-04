terragrunt = {
  remote_state {
    backend = "s3"
    encyrpt = true

    config {
      bucket = "tf-state-${get_aws_account_id()}-${get_env("REGION", "eu-central-1")}"
      region = "${get_env("REGION", "eu-central-1")}"
      key = "${path_relative_to_include()}/terraform.state"
    }
  }
  terraform {
    extra_arguments "custom_vars" {
      commands = [
        "apply",
        "plan",
        "destroy"
      ]
      arguments = [
        "-var-file=${get_parent_tfvars_dir()}/common.tfvars",
      ]
      required_var_files = [
        "${get_parent_tfvars_dir()}/terraform.tfvars"
      ]
    }

    after_hook "clean_remote_link" {
      commands = ["plan", "apply", "destroy"]
      execute = ["rm", "-rf", ".terraform"]
      run_on_error = true
    }

  }
}

