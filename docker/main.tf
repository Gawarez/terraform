terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  registry_auth {
    address     = "private.repo.com.br:5000"
    config_file = pathexpand("/root/.docker/config.json") # after docker login
  }
}

data "docker_registry_image" "priv" {
  name = "private.repo.com.br:5000/group/repo:main"
}

resource "docker_image" "frontend" {
  name          = "private.repo.com.br:5000/group/repo:main"
  keep_locally  = false
}

resource "docker_container" "frontend" {
  image = docker_image.frontend.image_id
  name  = "frontend_image"

  ports {
    internal = 80
    external = 3000
  }
}

# Ref: https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs