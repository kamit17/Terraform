terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = var.token
}

resource "github_repository" "example2" {
  name        = "example2"
  description = "from_template"

  visibility = "public"

  template {
    owner                = "kamit17"
    repository           = "template"
    include_all_branches = true
  }
}