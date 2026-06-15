output "container_name" {
  description = "Nama container yang berjalan"
  value       = docker_container.portofolio.name
}

output "container_id" {
  description = "ID container Docker"
  value       = docker_container.portofolio.id
}

output "access_url" {
  description = "URL akses portofolio"
  value       = "http://localhost:${var.host_port}"
}
