data "github_repository" "vault_actions" {
  full_name = var.github_repository
}

data "github_user" "current" {
  username = ""
}