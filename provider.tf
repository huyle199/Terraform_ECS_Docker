terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.20.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}


# Specifying the Docker provider configuration
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

provider "aws" {
  region     = "us-east-1"
}
