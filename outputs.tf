#Output the IP Address of the Container
output "IP Address" {
  value = "${module.container.IP_Address}"
}

output "container_name" {
  value = "${module.container.container_name}"
}
