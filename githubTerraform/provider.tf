terraform {
  required_version = "~> 1.5.7"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.token # or `GITHUB_TOKEN`
}
