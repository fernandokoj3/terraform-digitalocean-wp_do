output "stack_wp_lb_ip" {
  value       = digitalocean_loadbalancer.wp_lb.ip
  description = "Ip do load balance"
}

output "stack_wp_vm_ips" {
  value       = digitalocean_droplet.vm_wp[*].ipv4_address
  description = "IPs das máquinas Wordpress"
}

output "stack_nfs_vm_ips" {
  value       = digitalocean_droplet.vm_nfs.ipv4_address
  description = "IPs das máquinas Wordpress"
}

output "stack_wp_db_user" {
  value       = digitalocean_database_user.wp_database_user.name
  description = "Usuário do database"
}

output "stack_wp_db_password" {
  value       = digitalocean_database_user.wp_database_user.password
  description = "Senha do database"
  sensitive   = true
}
