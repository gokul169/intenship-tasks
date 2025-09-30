terraform {
  required_version = ">= 1.5.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Uses your local Docker (Docker Desktop / Docker Engine).
provider "docker" {}

# Optional: external port override when you run plan/apply
variable "external_port" {
  description = "Host port to expose NGINX on"
  type        = number
  default     = 8080
}

# Pull the NGINX image (kept only by Terraform unless keep_locally=true)
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

# Run the container
resource "docker_container" "nginx_container" {
  name  = "my-nginx"
  image = docker_image.nginx.latest

  # Map host:external_port -> container:80
  ports {
    internal = 80
    external = var.external_port
  }
}

# Helpful output
output "container_name" {
  value = docker_container.nginx_container.name
}

output "container_id" {
  value = docker_container.nginx_container.id
}

output "url" {
  value = "http://localhost:${var.external_port}"
}
