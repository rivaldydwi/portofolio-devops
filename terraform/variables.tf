variable "docker_image" {
  description = "Docker image yang akan di-deploy"
  type        = string
  default     = "rivaldydwi/portofolio-devops:latest"
}

variable "container_name" {
  description = "Nama container Docker"
  type        = string
  default     = "portofolio"
}

variable "host_port" {
  description = "Port yang diexpose di host"
  type        = number
  default     = 8080
}
