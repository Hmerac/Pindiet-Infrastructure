terragrunt = {
  terraform {
    source = "git::git@github.com:Hmerac/Pindiet-InfrastructureModules.git//platform/asg?ref=master"
  }
  include {
    path = "${find_in_parent_folders()}"
  }
  dependencies {
    paths = ["../vpc", "../ecs", "../rds", "../alb"]
  }
}

environment                                     = "development"
vpc_state_bucket                                = "tf-state-050369958887-eu-central-1"
vpc_state_key                                   = "infrastructure/development/vpc/terraform.state"
schedulable_containers_high_evaluation_periods  = "2"
schedulable_containers_low_evaluation_periods   = "1"
metric_name                                     = "SchedulableContainers"
schedulable_containers_high_period              = "300"
schedulable_containers_low_period               = "60"
statistic_type                                  = "Average"
schedulable_containers_high_threshold           = "4"
schedulable_containers_low_threshold            = "1"
number_of_instance_to_scale_up                  = "1"
number_of_instance_to_scale_down                = "-1"
namespace                                       = "ECSScalingMetrics"
handler                                         = "index.lambda_handler"
runtime                                         = "python2.7"
timeout                                         = "10"
memory_size                                     = "128"
max_instance_num                                = "3"
min_instance_num                                = "1"
desired_instance_num                            = "2"
instance_type                                   = "t2.micro"
ecs_keypair_name                                = "development-instances"