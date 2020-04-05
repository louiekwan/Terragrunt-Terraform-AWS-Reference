terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-elb.git?ref=v2.3.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/elb/aws/2.3.0?tab=inputs
###########################################################
inputs = {
  # A health check block
  # type: map(string)
  health_check = {"healthy_threshold": 2, "interval": 30, "target": "HTTP:80/", "timeout": 5, "unhealthy_threshold": 2}

  # A list of listener blocks
  # type: list(map(string))
  listener = [{"instance_port": "80", "instance_protocol": "http", "lb_port": "80", "lb_protocol": "http"}]

  # The name of the ELB
  # type: string
  name = "unique-hermit"

  # A list of security group IDs to assign to the ELB
  # type: list(string)
  security_groups = []

  # A list of subnet IDs to attach to the ELB
  # type: list(string)
  subnets = []

  
}
