
output "stack_wp_lb_ip" {
  value       = module.wp_stack.stack_wp_lb_ip
  description = "Ip do load balance"
}

output "stack_wp_vm_ips" {
  value       = module.wp_stack.stack_wp_vm_ips
  description = "IPs das máquinas Wordpress"
}

output "stack_nfs_vm_ips" {
  value       = module.wp_stack.stack_nfs_vm_ips
  description = "IPs das máquinas Wordpress"
}

output "stack_wp_db_user" {
  value       = module.wp_stack.stack_wp_db_user
  description = "Usuário do database"
}

output "stack_wp_db_password" {
  value       = module.wp_stack.stack_wp_db_password
  description = "Senha do database"
  sensitive   = true
}
