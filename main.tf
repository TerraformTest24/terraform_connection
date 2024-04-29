terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "TOKEN_GOES_HERE"
  owner = "TerraformTest24"
}

resource "github_membership" "membership_for_user_x" {
  username = "mcurream"
  role     = "admin"
}

resource "github_repository" "terraform_connection" {
	name = "terraform_connection"
	description = "Terraform CLI connection and creation test through IaC"
	visibility = "public"
}

resource "github_branch" "development" {
  repository = "terraform_connection"
  branch     = "development"
}

resource "github_branch" "feature" {
  repository = "terraform_connection"
  branch     = "feature"
}

resource "github_branch" "hotfix" {
  repository = "terraform_connection"
  branch     = "hotfix"
}


