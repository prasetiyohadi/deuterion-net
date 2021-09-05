output "instance_nat_ip" {
  description = "The public IP address of the compute instance."
  value       = module.devinfra.instance_nat_ip
}

output "instance_network_ip" {
  description = "The internal IP address of the compute instance."
  value       = module.devinfra.instance_network_ip
}
