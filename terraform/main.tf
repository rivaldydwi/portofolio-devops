terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull image dari Docker Hub
resource "docker_image" "portofolio" {
  name         = var.docker_image
  keep_locally = false
}

# Jalankan container
resource "docker_container" "portofolio" {
  name  = var.container_name
  image = docker_image.portofolio.image_id

  restart = "always"

  ports {
    internal = 80
    external = var.host_port
  }

  labels {
    label = "maintainer"
    value = "rivaldydwi"
  }

  labels {
    label = "managed-by"
    value = "terraform"
  }
}
