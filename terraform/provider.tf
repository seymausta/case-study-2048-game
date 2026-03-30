terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.0.1"
    }

    github = {
      source  = "integrations/github"
      version = ">= 4.20, < 6.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}