output "rds_instance_states_identifier" {
  description = "Map of identifier values across all rds_instance_states, keyed the same as var.rds_instance_states"
  value       = { for k, v in aws_rds_instance_state.rds_instance_states : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "rds_instance_states_region" {
  description = "Map of region values across all rds_instance_states, keyed the same as var.rds_instance_states"
  value       = { for k, v in aws_rds_instance_state.rds_instance_states : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rds_instance_states_state" {
  description = "Map of state values across all rds_instance_states, keyed the same as var.rds_instance_states"
  value       = { for k, v in aws_rds_instance_state.rds_instance_states : k => v.state if v.state != null && length(v.state) > 0 }
}

